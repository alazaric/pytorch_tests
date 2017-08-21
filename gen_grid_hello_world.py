#!/usr/local/bin/python

import argparse
import itertools
import json

BASE_CMD = "\"./run_hello_world.sh"

parser = argparse.ArgumentParser(description='Create a grid from json')
parser.add_argument('json', help='Json that contains the grid')

args = parser.parse_args()
with open(args.json, 'r') as f:
    grid = json.loads(f.read())

perms = list(itertools.product(*grid.values()))

for p in perms:
    argstr = ""
    i = 0
    for k in grid.keys():
        argstr += " -" + str(k) + " " + str(p[i])
        i += 1
    print(BASE_CMD + argstr + "\"")