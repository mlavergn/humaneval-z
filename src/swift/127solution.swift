func intersection(_ interval1: (Int, Int), _ interval2: (Int, Int)) -> String {
    let length = min(interval1.1, interval2.1) - max(interval1.0, interval2.0)
    if length < 2 { return "NO" }
    var i = 2
    while i * i <= length {
        if length % i == 0 { return "NO" }
        i += 1
    }
    return "YES"
}
