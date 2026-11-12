func fib4(_ n: Int) -> Int {
    var window = [0, 0, 2, 0]
    if n < 4 { return window[n] }
    for _ in 4...n {
        window = [window[1], window[2], window[3], window.reduce(0, +)]
    }
    return window[3]
}
