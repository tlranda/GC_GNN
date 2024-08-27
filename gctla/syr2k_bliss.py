# Adapted from github.com/rohanbasuroy/BLISS

# Cleans up his code significantly but also removes some core functionality for
# hyperthreading control and observations as our dataset is pre-recorded.
# If you are using this as a starting point, ensure that you refer to one of the
# original repositories for details on properly collecting observations

# Furthermore, given my use case here, I expect the argparse defaults are NOT
# reasonable for general-purpose autotuning. I left the argument names the same
# as BLISS's so you can easily find their defaults after the imports in their
# files.

import argparse
import random
import statistics
import warnings

import numpy as np
import pandas as pd
from scipy.stats import norm
from skopt.learning import GaussianProcessRegressor
import sklearn.gaussian_process as gp

def build():
    prs = argparse.ArgumentParser()
    sdef = "(default: %(default)s)"
    bliss = prs.add_argument_group("BLISS")
    bliss.add_argument("--max-calls", type=int, default=30,
                       help=f"Most actual observations to make {sdef}")
    bliss.add_argument("--num-initial-sample", type=int, default=1,
                       help=f"Initial samples before fitting {sdef}")
    bliss.add_argument("--percentage-sampled-by-acq", type=float, default=0.5,
                       help=f"Percentage of entire search space sampled in opt_acqusition() {sdef}")
    bliss.add_argument("--delay-min", type=int, default=20,
                       help=f"Nmber of evaluations before delay kicks in {sdef}")
    bliss.add_argument("--delay-max", type=int, default=50,
                       help=f"Maximum delay penalty {sdef}")
    bliss.add_argument("--delay-window", type=int, default=4,
                       help=f"Number of evaluations past delay min to update delay with (note delay_min - delay_window must be > num_models + num_initial_samples) {sdef}")
    bliss.add_argument("--lookahead-max", type=int, default=10,
                       help=f"Multiplier on looka  head {sdef}")
    bliss.add_argument("--lookahead-window", type=int, default=4,
                       help=f"Number of lookaheads to perform {sdef}")
    bliss.add_argument("--seed", type=int, default=1234,
                       help=f"Random seed {sdef}")
    syr2k = prs.add_argument_group("Syr2k")
    syr2k.add_argument("--size", choices=['SM','XL'], default="SM",
                       help=f"Problem size to work on {sdef}")
    syr2k.add_argument("--output", type=str, default=None,
                       help="Filename to output results to (default: print only)")
    #throttling_times = 2.5
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    random.seed(args.seed)
    np.random.seed(args.seed)
    return args

def build_syr2k_choices():
    # This is basically the only part of the BLISS script that changes
    p0 = [" ", "#pragma clang loop(j2) pack array(A) allocate(malloc)"]
    p1 = [" ", "#pragma clang loop(i1) pack array(B) allocate(malloc)"]
    p2 = [" ", "#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)"]
    p3 = ['96','4','8','16','20','32','50','64','80','100','128']
    p4 = ['2048','4','8','16','20','32','50','64','80','100','128']
    p5 = ['256','4','8','16','20','32','50','64','80','100','128']
    return [p0,p1,p2,p3,p4,p5]

# GLOBAL for convenience
param_choice_str = build_syr2k_choices()
param_choice = [list(range(len(p))) for p in param_choice_str]

# For my convenience: Load all of this information to assist in auto-evaluating from records
def get_syr2k_data(size_name):
    data = pd.read_csv(f"oracles/{size_name}/all_{size_name}.csv")
    data = data.sort_values(by=['objective']).reset_index(drop=True)
    cols = [f'p{_}' for _ in range(6)]
    results = pd.DataFrame(columns=cols+['objective','rank']) # Accumulate results
    return {'data': data,
            'cols': cols,
            'results': results}

def objective(li, delay, syr2k_ref):
    # Delay was used to determine if timeout is employed, but no need when going from records
    #   if len(exe_list) > delay:
    #       Timeout = throttingling_times * min(exe_list)
    asdict = dict((c,param_choice_str[ind][v]) for (c,(ind,v)) in zip(syr2k_ref['cols'], enumerate(li)))
    search = tuple(asdict.values())
    n_matches = (syr2k_ref['data'][syr2k_ref['cols']].astype(str) == search).sum(1).to_numpy()
    full_match_idx = np.nonzero(n_matches == len(syr2k_ref['cols']))[0]
    obj = syr2k_ref['data'].loc[full_match_idx[0],'objective']
    asdict['objective'] = obj
    asdict['rank'] = full_match_idx[0]
    new_result = pd.DataFrame(asdict, columns=syr2k_ref['cols']+['objective','rank'],
                              index=[len(syr2k_ref['results'])])
    with warnings.catch_warnings():
        warnings.simplefilter('ignore')
        # This will generate a warning the first time, just catch it
        syr2k_ref['results'] = pd.concat((syr2k_ref['results'],
                                          new_result))
    return -1 * obj

def surrogate(model, XX):
    with warnings.catch_warnings():
        warnings.simplefilter("ignore")
        return model.predict(XX, return_std=True)

def basic_acquisition(XX, Xsamples, model):
    yhat, _ = surrogate(model, XX)
    best = max(yhat)
    mu, std = surrogate(model, Xsamples)
    mu = mu[:]
    return yhat, best, mu, std

def acquisition_ei(XX, Xsamples, model):
    yhat, best, mu, std = basic_acquisition(XX, Xsamples, model)
    Z = (mu - best) / (std+1E-9)
    return (mu - best)*norm.cdf(Z) + std*norm.pdf(Z)

def acquisition_pi(XX, Xsamples, model):
    yhat, best, mu, std = basic_acquisition(XX, Xsamples, model)
    Z = (mu - best) / (std+1E-9)
    probs = norm.cdf(Z)
    return probs

def acquisition_ucb(XX, Xsamples, model, syr2k_ref):
    yhat, best, mu, std = basic_acquisition(XX, Xsamples, model)
    v = 1
    delta = 0.1
    d = len(param_choice)
    t = len(syr2k_ref['results'])
    Kappa = np.sqrt(v * (2 * np.log((t ** (d/2. + 2))* (np.pi ** 2)/(3. * delta))))
    return mu + Kappa*(std+1E-9)

def randomchoice_sample(n_samples):
    samples = []
    out_count = 0
    while out_count < n_samples:
        in_list = []
        in_count = 0
        while in_count < len(param_choice):
            in_list.append(random.choice(param_choice[in_count]))
            in_count += 1
        if in_list not in samples:
            samples.append(in_list)
            out_count += 1
    return samples

def opt_acquisition(XX, yy, model, acqval, syr2k_ref, args):
    total_choice = 1
    for cc in range(len(param_choice)):
        total_choice *= len(param_choice[cc])
    Xsamples = randomchoice_sample(max(int(args.percentage_sampled_by_acq*total_choice),
                                       1))
    if acqval == 0:
        scores = acquisition_ei(XX, Xsamples, model)
    if acqval == 1:
        scores = acquisition_pi(XX, Xsamples, model)
    if acqval == 2:
        scores = acquisition_ucb(XX, Xsamples, model, syr2k_ref)
    ix = np.argmax(scores)
    return Xsamples[ix]

def get_lookahead_status(model, delay, syr2k_ref, args):
    if len(syr2k_ref['results']) < delay:
        return 0
    lookahead_selection_list = []
    j = 0
    while j < args.lookahead_window:
        xx = opt_acquisition(XX, yy, model, acqval, args)
        print("optdone")
        actual = objective(xx, delay, syr2k_ref)
        est, _ = surrogate(model, [xx])
        XX.append(xx)
        yy.append(actual)
        model.fit(XX, yy)
        print(est[0], actual)
        if abs(abs(est[0])-abs(actual)) < abs(actual):
            lookahead_selection_list.append(int((1-(abs(abs(est[0])-abs(actual))/abs(actual)))*args.lookahead_max))
        else:
            lookahead_selection_list.append(0)
        j += 1
    lookahead = int(statistics.mean(lookahead_selection_list))
    lookahead_list.append(lookahead)
    return lookahead

def construct_models(syr2k_ref, args):
    kernel_options=[gp.kernels.DotProduct() + gp.kernels.WhiteKernel(),
                    gp.kernels.Matern(length_scale=1.0, nu=1.5),
                    gp.kernels.RBF(length_scale=1.0),
                    gp.kernels.RationalQuadratic(length_scale=1.0),
                    gp.kernels.ExpSineSquared(length_scale=1.0), # In original BLISS, this one is never touched
                    ]
    # model 1-4: EI, model 5-8: PI, model 9-12: UCB
    model_list = []
    acqval_list = []
    for strategy in [0,1,2]:
        for kernel_opt in kernel_options[:-1]:
            model_list.append(GaussianProcessRegressor(kernel=kernel_opt))
            acqval_list.append(strategy)
    model_sampling_list = [list() for i in range(len(model_list))]

    # Initial sampling
    XX = randomchoice_sample(args.num_initial_sample)
    yy = []
    for xx in XX:
        yy.append(objective(xx, 9999, syr2k_ref))
    for m in model_list:
        m.fit(XX, yy)
    return model_list, acqval_list, model_sampling_list, XX, yy

def main(args=None):
    args = parse(args)
    syr2k_ref = get_syr2k_data(args.size)
    # Note that syr2k_ref['results'] combines AND replaces the original BLISS
    # param_list, exe_list

    model_list, acqval_list, model_sampling_list, XX, yy = construct_models(syr2k_ref, args)

    delay = 9999 # Initially set it to an arbitrary large value
    lookahead_counter = 0
    mm = []
    model_selection_list = []
    delay_selection_list = []
    delay_list = []
    lookahead_list = []

    i = 0
    while len(syr2k_ref['results']) < args.max_calls:
        model_min_list = []
        if i == 0:
            for acqval, model in zip(acqval_list, model_list):
                xx = opt_acquisition(XX, yy, model, acqval, syr2k_ref, args)
                actual = objective(xx, delay, syr2k_ref)
                model_sampling_list[model_list.index(model)].append(-1*actual)
                est, _ = surrogate(model, [xx])
                XX.append(xx)
                yy.append(actual)
                model.fit(XX, yy)
                mm.append(f"m{model_list.index(model)+1}")
                model_selection_list.append(model)
                i += 1
        else:
            model = random.choice(model_selection_list)
            acqval = acqval_list[model_list.index(model)]
            xx = opt_acquisition(XX, yy, model, acqval, syr2k_ref, args)
            if lookahead_counter != 0: # prediction, no incrementation, no appending to model_selection_list
                est, _ = surrogate(model, [xx])
                XX.append(xx)
                yy.append(est[0])
                model.fit(XX, yy)
                lookahead_counter -= 1
            elif lookahead_counter == 0:
                actual = objective(xx, delay, syr2k_ref)
                model_sampling_list[model_list.index(model)].append(-1*actual)
                est, _ = surrogate(model, [xx])
                XX.append(xx)
                yy.append(actual)
                model.fit(XX, yy)
                for m in model_sampling_list:
                    model_min_list.append(min(m))
                model_selection_list.append(model_list[model_min_list.index(min(model_min_list))])
                mm.append(f"m{model_list.index(model)+1}")
                i += 1
                lookahead_counter = get_lookahead_status(model, delay, syr2k_ref, args)
        # Getting maturity / delay
        if len(syr2k_ref['results']) >= args.delay_min - args.delay_window and len(syr2k_ref['results']) < args.delay_min:
            if abs(abs(est[0]) - abs(actual)) < abs(actual):
                delay_selection_list.append(int((abs(abs(est[0])-abs(actual))/abs(actual))*(args.delay_max-args.delay_min)))
            else:
                delay_selection_list.append(args.delay_max)
        if len(syr2k_ref['results']) == args.delay_min:
            delay = args.delay_min + int(statistics.mean(delay_selection_list))
            delay_list.append(delay)
            print(f"The delay is {delay}")
        # File outputs
        if args.output is not None:
            syr2k_ref['results'].to_csv(args.output, index=False)
        else:
            print(syr2k_ref['results'])
        for li, fname in zip([mm, delay_list, lookahead_list],
                             ['model','delay','lookahead']):
            with open(f'{fname}_list.txt', 'w') as f:
                f.write("\n".join([str(_) for _ in li]))

if __name__ == '__main__':
    main()

