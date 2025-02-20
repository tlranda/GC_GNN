import subprocess
import pathlib

command = ['python3',
           'reconfigure_from_mmp.py',
           'collations/{}_collated.csv',
           '--from',
           '{}',
           '--to',
           '{}',
           ]
dir_in = pathlib.Path('arafat_all')
dir_out = pathlib.Path('arafat_all_convert')
for subd in dir_in.iterdir():
    if not subd.is_dir():
        print(f"Skip non-directory '{subd}'")
        continue
    # Build from/to strings
    from_str, to_str = list(), list()
    for maybe_csv in subd.iterdir():
        if maybe_csv.suffix != '.csv':
            print(f"Skip non-csv '{maybe_csv}'")
            continue
        from_str.append(str(maybe_csv))
        rename = dir_out / pathlib.Path(*maybe_csv.parts[1:])
        rename = rename.with_stem(f"{rename.stem}_convert")
        to_str.append(str(rename))
    # Make command
    for fr, to in zip(from_str, to_str):
        todo = [_ for _ in command]
        if subd.stem == '3mm':
            todo[2] = todo[2].format('_3mm')
        else:
            todo[2] = todo[2].format(subd.stem)
        todo[4] = todo[4].format(fr)
        todo[6] = todo[6].format(to)
        print(" ".join(todo))
        proc = subprocess.run(todo)
        if proc.returncode != 0:
            raise ValueError

