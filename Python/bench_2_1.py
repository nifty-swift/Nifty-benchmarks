import numpy as np
from time import time

def bench_2_1():

    trials = 100
    elements = 1000000

    times = []

    for i in range(trials):

        start = time()
        M = np.random.randint(1,999, size=elements)
        t = time()-start

        times.append(t)

    print 'Python - Benchmark 2.1: Average time = {} milliseconds'.format(np.mean(times)*1000)