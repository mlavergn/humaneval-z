func fibfib(_ n: Int) -> Int {
    if n <= 0 { return 0 }
    var window = [0, 0, 1]
    if n < 3 { return window[n] }
    for _ in 3...n {
        window = [window[1], window[2], window.reduce(0, +)]
    }
    return window[2]
}
