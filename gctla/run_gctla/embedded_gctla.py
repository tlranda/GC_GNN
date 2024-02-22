from GC_TLA.base_problem import embedding_problem_builder
import pathlib
oracle_dir = pathlib.Path(__file__).parents[1].joinpath("oracles")

input_space = [('Categorical',
    {'name': 'p0',
    'choices': ["#pragma clang loop(j2) pack array(A) allocate(malloc)", " "],
    'default_value': " "
    }),
    ('Categorical',
    {'name': 'p1',
    'choices': ["#pragma clang loop(i1) pack array(B) allocate(malloc)", " "],
    'default_value': " "
    }),
    ('Categorical',
    {'name': 'p2',
    'choices': ["#pragma clang loop(i1,j1,k1,i2,j2) interchange permutation(j1,k1,i1,j2,i2)", " "],
    'default_value': ' '
    }),
    ('Ordinal',
    {'name': 'p3',
    'sequence': ['4','8','16','20','32','50','64','80','96','100','128'],
    'default_value': '96'
    }),
    ('Ordinal',
    {'name': 'p4',
    'sequence': ['4','8','16','20','32','50','64','80','100','128','2048'],
    'default_value': '2048'
    }),
    ('Ordinal',
    {'name': 'p5',
    'sequence': ['4','8','16','20','32','50','64','80','100','128','256'],
    'default_value': '256'
    }),
    ]
N = 768
embedding_input_space = [
    ('UniformFloat',
        {'name': f'emb_dim_{i}', 'lower': -5., 'upper': 5.}
    ) for i in range(N)
]
input_space += embedding_input_space

lookup_ival = {20: ("N", "MINI"), 60: ("S", "SMALL"), 130: ("SM", "SM"), 200: ("M", "MEDIUM"),
               600: ("ML", "ML"), 1000: ("L", "LARGE"), 2000: ("XL", "EXTRALARGE"),
               3000: ("H", "HUGE"),}
oracles = {"SM": oracle_dir.joinpath("SM","all_SM.csv"), "XL": oracle_dir.joinpath("XL","all_XL.csv")}
__getattr__ = embedding_problem_builder(lookup_ival, input_space, None, oracles=oracles)

