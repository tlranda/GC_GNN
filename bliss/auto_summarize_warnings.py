from collections import defaultdict
import warnings

# Suppress warnings but show their count anyways, used as a replacement context
# for `with warnings.catch_warnings()`
class SummarizeWarnings():
    def __init__(self, suppress=True, announce=True):
        # Settings
        self.suppress = suppress # Suppress the actual warning
        if announce:
            print("Suppressing warnings, summary will be output on object GC")
        # Data
        self.counts = defaultdict(int)
        self.raised_locs = defaultdict(lambda: defaultdict(int))

    def __enter__(self):
        self.original_showwarning = warnings.showwarning
        # Has to be defined here since we cannot augment the signature, no point
        # in making it a lambda wrapper on a global scope that I am aware of
        if self.suppress:
            def showwarning_replacement(message, category, filename, lineno, file=None, line=None):
                self.counts[category.__name__] += 1
                key = f"{filename}:{lineno}"
                self.raised_locs[category.__name__][key] += 1
                # suppress warning
                return
        else:
            def showwarning_replacement(message, category, filename, lineno, file=None, line=None):
                self.counts[category.__name__] += 1
                self.raised_locs[category.__name__][f"{filename}:{lineno}"] += 1
                # echo normal warning
                return self.original_showwarning(message, category, filename, lineno, file=file, line=line)
        # Set this as our warning
        warnings.showwarning = showwarning_replacement
        # Capture all warnings
        warnings.simplefilter('always')
        return self

    def __exit__(self, exc_type, exc_value, traceback):
        # Restore original showwarnings
        warnings.showwarning = self.original_showwarning

    def __del__(self):
        # Show summary on deletion
        for category, count in self.counts.items():
            print(f"Suppressed {count} {category}s")
            for location, count in self.raised_locs[category].items():
                print("\t"+location+("" if count == 1 else f" (x{count})"))

