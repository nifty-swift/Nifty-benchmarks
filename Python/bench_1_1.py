import numpy as np
from time import time

def bench_1_1():

    trials = 100
    rows = 1000
    cols = 1000

    times = []

    for i in range(trials):
    
        M = np.random.randint(0,10000, size=(rows,cols))

        start = time()
        Minv = np.linalg.inv(M)
        t = time()-start

        times.append(t)

    print 'Python - Benchmark 1.1: Average time = {} milliseconds'.format(np.mean(times)*1000)