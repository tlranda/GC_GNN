import argparse
import pathlib

def build():
    prs = argparse.ArgumentParser()
    prs.add_argument('merge', type=pathlib.Path, help="The DIRECTORY where tmp files will be merged")
    prs.add_argument('--src', type=pathlib.Path, nargs="+", required=True, help="The DIRECTORIES where tmp files would come from to hop into the merge directory")
    return prs

def parse(args=None, prs=None):
    if prs is None:
        prs = build()
    if args is None:
        args = prs.parse_args()
    if not args.merge.is_dir():
        raise ValueError('Merge argument should be a directory')
    if any([not _.is_dir() for _ in args.src]):
        raise ValueError('One or more --from arguments are not directories')
    return args

def main(args=None):
    args = parse(args)
    for d in args.src:
        already_there = set(map(lambda x: x.name, args.merge.iterdir()))
        to_move_there = set(map(lambda x: x.name, d.iterdir()))
        clobber = to_move_there.intersection(already_there)
        if len(clobber) == 0:
            print(f"No collisions found from {d} --> {args.merge}. Move OK")
        else:
            print(f"!! {len(clobber)} collisions found from {d} --> {args.merge} !!")

if __name__ == '__main__':
    main()

