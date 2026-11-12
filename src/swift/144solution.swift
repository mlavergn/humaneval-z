func simplify(_ x: String, n: String) -> Bool {
    let a = x.split(separator: "/").compactMap { Int($0) }
    let b = n.split(separator: "/").compactMap { Int($0) }
    return (a[0] * b[0]) % (a[1] * b[1]) == 0
}
