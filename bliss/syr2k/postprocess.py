import numpy as np
import networkx as nx
import matplotlib
import matplotlib.pyplot as plt

import copy
import pprint

with open('output.txt','r') as f:
    maxdepth = 0
    function_lines = list()
    for lineno,_ in enumerate(f.readlines()):
        if not _.lstrip().startswith('Function'):
            continue
        fdepth = _.index('F')
        __, fname, fsec = _.lstrip().split(' ')
        fname = fname.rstrip(':')
        fsec = float(fsec)
        function_lines.append((lineno, fname, fdepth, fsec))
        maxdepth = max(maxdepth, fdepth)

depth_queue = [list() for _ in range(maxdepth+1)]
time_queue = [list() for _ in range(maxdepth+1)]

graph_own = dict()
graph_total = dict()
graph_connection = nx.Graph()
graph_labels = dict()
nodeid = 0
nwarn = list()
prevdepth = -1
for (lineno, fname,fdepth,fsec) in function_lines:
    callkey = (fname,fdepth)
    if callkey not in graph_labels:
        graph_labels[callkey] = nodeid
        graph_connection.add_node(nodeid)
        nodeid += 1
        graph_own[callkey] = list()
        graph_total[callkey] = list()
    depth_queue[fdepth].append(callkey)
    time_queue[fdepth].append(fsec)
    # Resolve a graph collapse
    if fdepth < maxdepth and len(depth_queue[fdepth+1]) > 0:
        depthtime = sum(time_queue[fdepth+1])
        owntime = fsec - depthtime
        if owntime < 0:
            nwarn.append(callkey)
            owntime = 0.
        for edge in depth_queue[fdepth+1]:
            graph_connection.add_edge(graph_labels[callkey], graph_labels[edge])
        time_queue[fdepth+1].clear()
        depth_queue[fdepth+1].clear()
        graph_own[callkey].append(owntime)
        graph_total[callkey].append(fsec)
    elif fdepth >= prevdepth:
        graph_own[callkey].append(fsec)
        graph_total[callkey].append(fsec)
    prevdepth = fdepth
# Add main to connect everything
callkey = ('main',-1)
graph_connection.add_node(nodeid)
graph_labels[callkey] = nodeid
for base_call in depth_queue[0]:
    graph_connection.add_edge(graph_labels[callkey],graph_labels[base_call])
depth_queue[0].clear()
time_queue[0].clear()

if len(nwarn) > 0:
    print("Warnings:")
    for name in sorted(set(nwarn)):
        print(f"{name}: {nwarn.count(name)} / {len(graph_own[name])} ")
for idx,depth in enumerate(depth_queue):
    if len(depth) > 0:
        print(f"Warn: Depth queue {idx} has length {len(depth)} after full processing")

pprint.pprint(dict((k,(np.mean(v), np.mean(graph_total[k]), np.sum(graph_total[k]), len(v))) for (k,v) in graph_own.items()))
#fig, ax = plt.subplots()
#nx.draw(graph_connection, with_labels=True, ax=ax, labels=dict((v,k) for (k,v) in graph_labels.items()))
#plt.show()
