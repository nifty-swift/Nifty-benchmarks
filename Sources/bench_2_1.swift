import Nifty

func bench_2_1()
{
    let trials = 100
    let elements = 1000000    

    var times = [Double]()

    for _ in 0..<trials
    {        
        tic()
        _ = randi(elements, min: 1, max: 999)
        let t = toc(returning: .ms)

        times.append(t)
    }

    print("Swift - Benchmark 2.1: Average time = \(mean(times)) milliseconds")
}