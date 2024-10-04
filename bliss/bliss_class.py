# Adapted from github.com/rohanbasuroy/BLISS

# Significantly reorganizes code, but also removes some core functionality for
# hyperthreading control.
# If you are using this as a starting point, ensure that you refer to one of the
# original repository's implementations -- they should remain highly comparable
# to this codebase.

# Furthermore, given my use case here, I expect the argparse defaults are NOT
# reasonable for general-purpose autotuning. I left the argument names the same
# as BLISS's so you can easily find their defaults after the imports in their
# files.

# Builtin imports
import argparse
from functools import reduce
from operator import mul
import random
import time
from typing import Optional, List, Tuple, Union
import warnings

# Dependent imports
import numpy as np
import pandas as pd
from scipy.stats import norm
from skopt.learning import GaussianProcessRegressor
import sklearn.gaussian_process as gp

# Relative imports
from auto_summarize_warnings import SummarizeWarnings

class BLISS_Tuner():
    # Default argument values declared at class namespace so subclasses can
    # easily redefine them if these defaults prove to be inadequate.
    # Refer to --help or the build() method for semantic meanings
    default_max_calls = 30
    default_num_initial_sample = 1
    default_percentage_sampled_by_acq = 0.5
    default_delay_min = 20
    default_delay_max = 50
    default_delay_window = 4
    default_lookahead_max = 10
    default_lookahead_window = 4
    default_throttling_timeout_factor = 2.5
    default_seed = 1234

    def __init__(self,
                 parser: Optional[argparse.ArgumentParser]=None,
                 args: Optional[argparse.Namespace]=None,
                 ):
        """
            Create models and acquisition strategies
            Add command line interface and parse it
            Initialize tuning problem parameters
            Initialize global data for BLISS tuning
        """
        # Warning suppressor
        self.warning_suppressor = SummarizeWarnings()

        # Models
        kernel_options=[gp.kernels.DotProduct() + gp.kernels.WhiteKernel(),
                        gp.kernels.Matern(length_scale=1.0, nu=1.5),
                        gp.kernels.RBF(length_scale=1.0),
                        gp.kernels.RationalQuadratic(length_scale=1.0),
                        gp.kernels.ExpSineSquared(length_scale=1.0), # In original BLISS, this one is never touched
                        ]
        # model 1-4: EI, model 5-8: PI, model 9-12: UCB
        self.model_list = []
        self.acqval_list = []
        for strategy in [0,1,2]:
            for kernel_opt in kernel_options[:-1]: # Excludes final kernel
                self.model_list.append(GaussianProcessRegressor(kernel=kernel_opt))
                self.acqval_list.append(strategy)

        # Set basic arguments for script
        self.prs = self.build(parser)
        self.args = self.parse(args)

        # Get hyperparameters for tuning problem
        self.parameters = self.build_parameters()
        # Make an indexer for BLISS to use in selections and track total
        # parameter sizes
        self.param_index = list(map(list, map(range, map(len, self.parameters))))
        self.total_choice = reduce(mul,map(len,self.parameters))

        # Used to track evaluation results and know the source of truth
        self.model_sampling_list = [list() for _ in range(len(self.model_list))]
        self.model_selection_list = list()
        self.lookahead_list = list()
        self.configurations = list()
        self.evaluations = list()

    """
        IMPLEMENTERS WILL OVERRIDE THESE METHODS
        def func(self, *args, **kwargs):
            super().func(*args, **kwargs)
            # Then your own implementation / extension here
    """
    def build_parameters(self) -> List[List[object]]:
        # Return list of hyperparameters (a list of options for hyperparameter)
        pass

    def objective(self,
                  configuration: List[object],
                  delay: int,
                  ) -> Union[int, float]:
        # Evaluates your objective on the given configuration, returning a
        # numeric value.
        #
        # Objective values are MAXIMIZED by BLISS's models, so negate your
        # objective value if it is intended to be minimized.
        #
        # BLISS originally used Python's time.time() to measure subprocess
        # execution duration; for greater precision and reduced noise, it is
        # typically best to interally measure your objective and have this
        # function read the value post-execution.
        #
        # You may also wish to implement an early-halting mechanism similar to
        # BLISS's original implementation if your objective is runtime. In
        # the original work, once the number of evaluations exceeds the
        # delay value, a timeout(1) is prepended to the command with duration
        # equal to self.args.throtting_timeout_factor * min(self.evaluations)
        pass

    def build(self,
              prs: Optional[argparse.ArgumentParser]=None,
              ) -> argparse.ArgumentParser:
        # Build argument parsing with a BLISS section that controls BLISS's behavior

        if prs is None:
            prs = argparse.ArgumentParser()
        # Simplify the argparse process of indicating a default agument in help string
        default_help = "(default: %(default)s)"

        # Add BLISS tuning arguments
        bliss = prs.add_argument_group("BLISS")
        bliss.add_argument("--max-calls", type=int, default=self.default_max_calls,
                           help=f"Most actual observations to make {default_help}")
        bliss.add_argument("--num-initial-sample", type=int, default=self.default_num_initial_sample,
                           help=f"Initial random samples before fitting {default_help}")
        bliss.add_argument("--test-initial-sample", action='store_true',
                           help=f"Exit after performing initial samples (for testing only) {default_help}")
        bliss.add_argument("--percentage-sampled-by-acq", type=float, default=self.default_percentage_sampled_by_acq,
                           help=f"Percentage of entire search space sampled in opt_acquisition() {default_help}")
        bliss.add_argument("--delay-min", type=int, default=self.default_delay_min,
                           help=f"Nmber of evaluations before delay kicks in {default_help}")
        bliss.add_argument("--delay-max", type=int, default=self.default_delay_max,
                           help=f"Maximum delay penalty {default_help}")
        bliss.add_argument("--delay-window", type=int, default=self.default_delay_window,
                           help=f"Number of evaluations past delay min to update delay with (note delay_min - delay_window must be > num_models ({len(self.model_list)}) + num-initial-sample argument) {default_help}")
        bliss.add_argument("--lookahead-max", type=int, default=self.default_lookahead_max,
                           help=f"Most permitted evaluations to be substituted by surrogate during lookahead {default_help}")
        bliss.add_argument("--lookahead-window", type=int, default=self.default_lookahead_window,
                           help=f"Number of evaluations to perform when calibrating lookahead {default_help}")
        bliss.add_argument("--throttling-timeout-factor", type=float, default=self.default_throttling_timeout_factor,
                           help=f"After establishing mature baseline, timeout evaluations that exceed this factor of the minimum known runtime {default_help}")
        bliss.add_argument("--seed", type=int, default=self.default_seed,
                           help=f"Random seed {default_help}")
        bliss.add_argument("--csv-output", default=None,
                           help="Filename to save results to (default: print to output as Pandas Dataframe)")

        return prs

    def parse(self,
              args: Optional[argparse.Namespace]=None,
              prs: Optional[argparse.ArgumentParser]=None,
              ) -> argparse.Namespace:
        # Parse, validate, and interpret command-line arguments

        # Safety / overrides of inputs
        if prs is None:
            if not hasattr(self, 'prs'):
                self.prs = self.build()
            if self.prs is None:
                raise ValueError(f"No parser given and {__name__} lacks attribute 'prs' after calling {__name__}.build().")
            prs = self.prs
        if args is None:
            if not hasattr(self, 'args'):
                self.args = prs.parse_args()
            if self.args is None:
                raise ValueError("No arguments given and argument parsing failed for {__name__}")
            args = self.args

        # Check values
        if (args.delay_min - args.delay_window) <= (len(self.model_list) + args.num_initial_sample):
            raise ValueError(f"Difference between delay min (given: {args.delay_min}) and delay window (given: {args.delay_window}) must be greater than the number of models ({len(self.model_list)}) plus initial samples (given: {args.num_initial_sample})")

        # Set seeds
        random.seed(args.seed)
        np.random.seed(args.seed)

        return args

    def get_results(self):
        # Retrieve all tracked experimental results
        column_names = [f'p{_}' for _ in range(len(self.parameters))]
        column_names.extend(['objective','lookahead','model_name','acquisition_function'])
        models = ['Initial_Sample']*self.args.num_initial_sample
        models.extend([str(self.model_list[index]) for index in self.model_selection_list])
        acquisition_fns = ['ei','pi','ucb']
        acquisitions = ['Random_Sampling']*self.args.num_initial_sample
        acquisitions.extend([acquisition_fns[self.acqval_list[index]] for index in self.model_selection_list])
        data_arrays = [self.configurations, self.evaluations, self.lookahead_list, models, acquisitions]
        np_data = np.hstack((np.atleast_2d(data_arrays[0]), *(np.atleast_2d(arr).T for arr in data_arrays[1:])))

        return pd.DataFrame(data=np_data, columns=column_names)

    def save_results(self):
        # Save or display results
        results = self.get_results()
        if self.args.csv_output is None:
            print(results)
        else:
            results.to_csv(self.args.csv_output, index=False)

    """
        IMPLEMENTERS WILL NOT OVERRIDE METHODS BEYOND THIS POINT
        (unless you intend to change how BLISS itself operates)
    """

    def surrogate(self,
                  model: object,
                  configurations: List[List[object]],
                  ) -> Tuple[np.ndarray, np.ndarray]:
        with self.warning_suppressor:
        #with warnings.catch_warnings():
        #    warnings.simplefilter("ignore")
            # Returns mu, std
            return model.predict(configurations, return_std=True)

    def basic_acquisition(self,
                          model: object,
                          predict_configurations: List[List[object]],
                          ) -> Tuple[np.ndarray, float, np.ndarray, np.ndarray]:
        # Model all prior evaluations
        yhat, _ = self.surrogate(model, self.configurations)
        best = max(yhat)
        mu, std = self.surrogate(model, predict_configurations)
        mu = mu[:] # Redundant?
        return yhat, best, mu, std

    def acquisition_ei(self,
                       model: object,
                       predict_configurations: List[List[object]],
                       ) -> np.ndarray:
        yhat, best, mu, std = self.basic_acquisition(model, predict_configurations)
        Z = (mu - best) / (std + 1E-9)
        return (mu - best)*norm.cdf(Z) + std*norm.pdf(Z)

    def acquisition_pi(self,
                       model: object,
                       predict_configurations: List[List[object]],
                       ) -> np.ndarray:
        yhat, best, mu, std = self.basic_acquisition(model, predict_configurations)
        Z = (mu - best) / (std+1E-9)
        probs = norm.cdf(Z)
        return probs

    def acquisition_ucb(self,
                        model: object,
                        predict_configurations: List[List[object]],
                        ) -> np.ndarray:
        yhat, best, mu, std = self.basic_acquisition(model, predict_configurations)
        v = 1
        delta = 0.1
        d = len(self.parameters)
        t = len(self.evaluations)
        Kappa = np.sqrt(v * (2 * np.log((t ** (d/2. + 2))* (np.pi ** 2)/(3. * delta))))
        return mu + Kappa*(std+1E-9)

    def randomchoice_sample(self,
                            n_samples: int,
                            ) -> List[List[object]]:
        # Return randomly selected unique hyperparameter configurations

        samples = set()
        while len(samples) < n_samples:
            in_list = []
            for in_count in range(len(self.param_index)):
                in_list.append(random.choice(self.param_index[in_count]))
            samples.add(tuple(in_list))
        samples = list(map(list,samples))
        return samples

    def opt_acquisition(self,
                        model: object,
                        acqval: int,
                        ) -> List[object]:
        # Get best-predicted configuration based on selected acquisition function

        n_sample = int(self.args.percentage_sampled_by_acq * self.total_choice)
        predict_configurations = self.randomchoice_sample(max(n_sample, 1))
        if acqval == 0:
            scores = self.acquisition_ei(model, predict_configurations)
        if acqval == 1:
            scores = self.acquisition_pi(model, predict_configurations)
        if acqval == 2:
            scores = self.acquisition_ucb(model, predict_configurations)
        ix = np.argmax(scores)
        return predict_configurations[ix]

    def get_lookahead_status(self,
                             index: int,
                             delay: int,
                             ) -> int:
        # Determine how many evaluations can be surrogatively looked ahead,
        # note that this function consumes self.args.lookahead_window REAL
        # evaluations each time it is called
        model = self.model_list[index]
        acqval = self.acqval_list[index]

        if len(self.evaluations) < delay:
            return 0
        lookahead_selection_list = []
        j = 0
        while j < self.args.lookahead_window:
            # Collect a real evaluation
            opt = self.opt_acquisition(model, acqval)
            actual = self.objective(opt, delay)
            estimated, _ = self.surrogate(model, [opt]) # For error calculation
            self.configurations.append(opt)
            self.evaluations.append(actual)
            # No lookaheads are performed prior to this evaluation
            self.lookahead_list.append(0)
            self.model_selection_list.append(index)
            with self.warning_suppressor:
            #with warnings.catch_warnings():
            #    warings.simplefilter('ignore')
                model.fit(self.configurations, self.evaluations)
            # Update lookahead selection list
            observed_error = abs(abs(estimated[0])-abs(actual))
            if observed_error < abs(actual):
                # Use more of the lookahead as precision increases
                lookahead = int(self.args.lookahead_max * (1-(observed_error/abs(actual))))
            else:
                # If our error is too large, we cannot lookahead yet
                lookahead = 0
            lookahead_selection_list.append(lookahead)
            j += 1
        lookahead = int(np.mean(lookahead_selection_list))
        return lookahead

    def initial_sampling(self):
        """
            Collect a number of initial configurations randomly and perform
            initial model fitting
        """
        self.configurations.extend(self.randomchoice_sample(self.args.num_initial_sample))
        # Evaluate all initial configurations
        for config in self.configurations:
            self.evaluations.append(self.objective(config, 9999))
            self.lookahead_list.append(-1) # No lookahead performed for this evaluation, but no model to select either
        # Fit all models on initial data
        for m in self.model_list:
            with self.warning_suppressor:
            #with warnings.catch_warnings():
            #    warnings.simplefilter('ignore')
                m.fit(self.configurations, self.evaluations)

    def run_BLISS(self):
        # Performs the BLISS process to learn the space and model preference

        self.initial_sampling()
        # TEST PATH -- SHOULD TEST ABILITY TO EVALUTE A SMALL FIXED NUMBER OF POINTS
        if self.args.test_initial_sample:
            return
        delay = 9999 # Initially set to an arbitrarily large value
        lookahead_counter = 0
        delay_selection_list = []
        delay_list = []

        i = 0
        # Note that some other functions can extend self.evaluations, including
        # initial_sampling()
        # get_lookahead_status()
        while len(self.evaluations) < self.args.max_calls:
            model_min_list = []
            if i == 0:
                # First iteration, try everything once
                for index, (acqval, model) in enumerate(zip(self.acqval_list, self.model_list)):
                    opt = self.opt_acquisition(model, acqval)
                    actual = self.objective(opt, delay)
                    self.model_sampling_list[index].append(actual*-1)
                    est, _ = self.surrogate(model, [opt]) # Result used in maturity/delay update (estimation error should be taken prior to refitting)
                    self.lookahead_list.append(0) # No lookahead performed for this evaluation
                    self.configurations.append(opt)
                    self.evaluations.append(actual)
                    with self.warning_suppressor:
                    #with warnings.catch_warnings():
                    #    warnings.simplefilter('ignore')
                        model.fit(self.configurations, self.evaluations)
                    self.model_selection_list.append(index)
                    i += 1
            else:
                # Choices become increasingly weighted by what works best
                # However, we exclude lookahead evaluations from biasing the list
                index = random.choice(model_indices)
                model = self.model_list[index]
                acqval = self.acqval_list[index]
                # Select the point with this model/acqval combination
                opt = self.opt_acquisition(model, acqval)
                index = random.choice(model_indices)
                model = self.model_list[index]
                acqval = self.acqval_list[index]
                # Select the point with this model/acqval combination
                opt = self.opt_acquisition(model, acqval)
                if lookahead_counter != 0:
                    # Prediction ONLY during lookahead
                    # Don't update i or model_selection_list
                    #
                    # Lookahead is ONLY permitted when models are very accurate,
                    # so its data is treated as ground truth by BLISS
                    est, _ = self.surrogate(model, [opt])
                    self.configurations.append(opt)
                    self.evaluations.append(est[0])
                    self.lookahead_list.append(1) # Lookahead utilized
                    with self.warning_suppressor:
                    #with warnings.catch_warnings():
                    #    warnings.simplefilter('ignore')
                        model.fit(self.configurations,
                                  self.evaluations)
                    lookahead_counter -= 1
                elif lookahead_counter == 0:
                    # Perform an actual evaluation on this model
                    actual = self.objective(opt, delay)
                    self.configurations.append(opt)
                    self.evaluations.append(actual)
                    self.lookahead_list.append(0) # No lookahead performed for this evaluation
                    self.model_sampling_list[index].append(actual*-1) # Model achieved this performance
                    est, _ = self.surrogate(model, [opt]) # Result used in maturity/delay update (estimation error should be taken prior to refitting)
                    with self.warning_suppressor:
                    #with warnings.catch_warnings():
                    #    warnings.simplefilter('ignore')
                        model.fit(self.configurations, self.evaluations)
                    # Bias the model selection list:
                    # For each model, load their best (minimal) result
                    for m in self.model_sampling_list:
                        model_min_list.append(min(m))
                    # Then append the model index of best-performing minimum to increase its likelihood of selection in the future
                    self.model_selection_list.append(np.argmin(model_min_list))
                    i += 1
                    lookahead_counter = self.get_lookahead_status(index, delay)
            # Update maturity / delay
            if len(self.evaluations) >= self.args.delay_min - self.args.delay_window and len(self.evaluations) < self.args.delay_min:
                observed_error = abs(abs(est[0])-abs(actual))
                if observed_error < abs(actual):
                    delay_selection_list.append(int((observed_error/abs(actual)) * (self.args.delay_max - self.args.delay_min)))
                else:
                    delay_selection_list.append(self.args.delay_max)
            if len(self.evaluations) == self.args.delay_min:
                delay = self.args.delay_min + int(np.mean(delay_selection_list))
                delay_list.append(delay)
        self.save_results()

if __name__ == '__main__':
    bt = BLISS_Tuner()
    bt.run_BLISS()

