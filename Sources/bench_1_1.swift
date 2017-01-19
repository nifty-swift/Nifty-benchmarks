import Nifty

func bench_1_1()
{
    let trials = 100
    let rows = 1000
    let cols = 1000

    var times = [Double]()

    for _ in 0..<trials
    {
        let M = rand(rows, cols, min: 0, max: 10000)

        tic()
        let _ = inv(M)
        let time = toc(returning: .ms)

        times.append(time)
    }

    print("Benchmark 1.1: Average time = \(mean(times)) milliseconds")
}