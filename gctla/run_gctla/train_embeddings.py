"""
If we could look up embeddings, this is how we'd do it:
Currently, you call problem.objective(problem_space_dict) to look up the problem in the oracle
However, the space dict must be in terms of the original search space, not as an embedding
We will navigate this bridge later
"""
import embedded_gctla
problem = getattr(embedded_gctla, "oracle_XL")
potential_configuration = {
    "p0": "#pragma clang loop(j2) pack array(A) allocate(malloc)",
    "p1": " ",
    "p2": " ",
    "p3": "32",
    "p4": "128",
    "p5": "4",
}
objective_val = problem.objective(potential_configuration)
print(objective_val)
