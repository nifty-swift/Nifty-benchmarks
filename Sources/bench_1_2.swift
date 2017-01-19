import Nifty

func bench_1_2()
{
    let trials = 100
    let rows = 1000
    let cols = 1000

    var times = [Double]()

    for _ in 0..<trials
    {
        let M = randi(rows, cols, min: 0, max: 10000)
        let MtM = transpose(M)*M

        tic()
        let _ = chol(MtM, .lower)
        let t = toc(returning: .ms)

        times.append(t)
    }

    print("Swift - Benchmark 1.2: Average time = \(mean(times)) milliseconds")
}