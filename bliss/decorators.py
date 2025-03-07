import inspect
import time

def timed_func(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        depth = 0
        stack = []
        frame = inspect.currentframe()
        while frame is not None:
            co_name = frame.f_code.co_name
            if co_name not in ['wrapper','timed_func']:
                depth += 1
                stack.append(co_name)
            frame = frame.f_back
        print("\t"*(depth-1)+f"Function {func.__name__}: {end_time-start_time:.6f}")
        return result
    return wrapper

