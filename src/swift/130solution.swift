func tri(_ n: Int) -> [Double] {
    var result: [Double] = [1]
    if n == 0 { return result }
    result.append(3)
    if n < 2 { return result }
    for i in 2...n {
        let fi = Double(i)
        result.append(i % 2 == 0 ? fi / 2 + 1 : result[i - 1] + result[i - 2] + (fi + 3) / 2)
    }
    return result
}
