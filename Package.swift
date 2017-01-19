import PackageDescription

let package = Package(
    name: "Nifty-benchmarks",
    dependencies: [
        .Package(url: "https://github.com/nifty-swift/Nifty.git", majorVersion: 1)
    ]    
)
