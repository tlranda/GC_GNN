# Based on demo: https://opentuner.org/tutorial/gettingstarted

# Builtin imports
import argparse
from copy import deepcopy
import random
import sys
from typing import Optional, List, Tuple, Union
import warnings

# Dependent imports
import pandas as pd
import numpy as np

import opentuner
from opentuner import ConfigurationManipulator
from opentuner import EnumParameter
from opentuner import MeasurementInterface
from opentuner import Result

class OpenTuner_Tuner(MeasurementInterface):
    # Default argument values declared at class namespace so subclasses can
    # easily redefine them when defaults prove to be inadequate.
    # Refer to --help or the build() method for semantic meanings
    default_max_calls = 200
    default_seed = 1234

    def __init__(self, *args, **kwargs):
        # Set basic arguments for the script
        self.prs, self.opentuner_args, extra_args = self.build()
        temp_args = self.parse(extra_args, namespace=deepcopy(self.opentuner_args))

        # Repackage and push on to normal initialization
        super().__init__(self.opentuner_args, **kwargs)
        # Reset args to full list
        self.args = temp_args

    """
        IMPLEMENTERS WILL OVERRIDE THESE METHODS
        Preferred implementation is via wrapping, ie:

        # Example class method 'func'
        def func(self, *args, **kwargs):
            super().func(*args, **kwargs)
            # Then your own implementation / extension here
    """

    def build(self) -> Tuple[argparse.ArgumentParser, argparse.Namespace, List[str]]:
        # Simplify the argparse process of indicating a default argument in the help string
        default_help = "(default: %(default)s)"

        # Get basic interface from opentuner
        prs = opentuner.default_argparser()
        if not any([_ in sys.argv for _ in ['-h','--help']]):
            opentuner_args, remaining_args = prs.parse_known_args()
        else:
            # Help will be processed during parse(), after all build()s have passed
            opentuner_args = None
            remaining_args = None
        # General extensions
        general = prs.add_argument_group("General")
        general.add_argument("--random-seed", type=int, default=self.default_seed,
                             help=f"Random seed {default_help}")
        general.add_argument("--csv-output", default=None,
                             help="Filename to save results to (default: print to output as Pandas Dataframe)")
        return prs, opentuner_args, remaining_args

    def parse(self, args=None, namespace=None) -> argparse.Namespace:
        self.args = self.prs.parse_args(args, namespace=namespace)

        # Set seeds
        random.seed(self.args.random_seed)
        np.random.seed(self.args.random_seed)

        return self.args

    def manipulator(self) -> ConfigurationManipulator:
        # Builds the search space for OpenTuner
        #
        # Demo given below, adapt parameters with your parameter lists
        # manipulator = ConfigurationManipulator()
        # # Options are NOT weighted by order, but first option in list is default
        # parameters = [
        #       EnumParameter('p0', ['p0_default_value', 'value1', 'value2']),
        # ]
        # for parameter in parameters:
        #       manipulator.add_parameter(parameter)
        # return manipulator
        pass

    def run(self, desired_result, input, limit):
        # Compile and run a given configuraiton, then return performance
        # Access the configuration: desired_result.configuration.data
        # Note that OpenTuner may reorder columns if you expect a particular
        # key order
        #
        # Always append key results in a pandas dataframe under the attribute
        # 'opentuner_results' to ensure proper exports at the end of tuning
        # You may find it easier to track this via helper methods:
        # * configure_desired_result()
        # * add_opentuner_result()
        #
        # Return a Result object a la:
        # return Result(time=objective_time)
        pass

    """
        IMPLEMENTERS WILL NOT OVERRIDE METHODS BEYOND THIS POINT
        (unless you intend to change how OpenTuner itself operates)
    """

    def configure_desired_result(self, params):
        # Call this during __init__ or manipulator() to set up the parameters that are saved from your desired_result in add_opentuner_result()
        if hasattr(self,'opentuner_params'):
            self.opentuner_params.add(set(params))
        else:
            self.opentuner_params = set(params)

    def add_opentuner_result(self, desired_result, **kwargs):
        cfg = desired_result.configuration.data
        cfg.update(kwargs)
        cfg = dict((k,cfg[k]) for k in sorted(self.opentuner_params))
        new_result = pd.DataFrame(cfg, columns=sorted(self.opentuner_params),
                                  index=[len(self.opentuner_results)])
        self.opentuner_results = pd.concat((self.opentuner_results,
                                            new_result))

    def save_final_config(self, configuration):
        # Called at the end of tuning
        if self.args.csv_output is None:
            print(self.opentuner_results)
        else:
            self.opentuner_results.to_csv(self.args.csv_output, index=False)
        print(f"Optimal result: {configuration.data}")

    def main(self):
        super().main(self.args)

if __name__ == '__main__':
    OpenTuner_Tuner().main()

