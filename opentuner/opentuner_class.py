# Based on demo: https://opentuner.org/tutorial/gettingstarted

# Builtin imports
import argparse
import random
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
    default_max_calls = 30
    default_seed = 1234

    def __init__(self, *args, **kwargs):
        # Set basic arguments for the script
        self.prs = self.build()
        self.args = self.parse()

        # Repackage and push on to normal initialization
        args = tuple([self.args] + list(args))
        super().__init__(*args, **kwargs)

    """
        IMPLEMENTERS WILL OVERRIDE THESE METHODS
        Preferred implementation is via wrapping, ie:

        # Example class method 'func'
        def func(self, *args, **kwargs):
            super().func(*args, **kwargs)
            # Then your own implementation / extension here
    """

    def build(self) -> argparse.ArgumentParser:
        # Simplify the argparse process of indicating a default argument in the help string
        default_help = "(default: %(default)s)"

        # Get basic interface from opentuner
        prs = opentuner.default_argparser()
        # General extensions
        general = prs.add_argument_group("General")
        general.add_argument("--seed", type=int, default=self.default_seed,
                             help=f"Random seed {default_help}")
        general.add_argument("--csv-output", default=None,
                             help="Filename to save results to (default: print to output as Pandas Dataframe)")
        return prs

    def parse(self) -> argparse.Namespace:
        self.args = self.prs.parse_args()

        # Check values

        # Set seeds
        random.seed(self.args.seed)
        np.random.seed(self.args.seed)

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
        #
        # Return a Result object a la:
        # return Result(time=objective_time)
        pass

    """
        IMPLEMENTERS WILL NOT OVERRIDE METHODS BEYOND THIS POINT
        (unless you intend to change how OpenTuner itself operates)
    """

    def main(self):
        super().main(self.args)

    def save_final_config(self, configuration):
        # Called at the end of tuning
        if self.args.csv_output is None:
            print(self.opentuner_results)
        else:
            self.opentuner_results.to_csv(self.args.csv_output, index=False)
        print(f"Optimal result: {configuration.data}")

if __name__ == '__main__':
    ot = OpenTuner_Tuner()
    ot.main()

