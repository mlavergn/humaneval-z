func triangleArea(a: Double, b: Double, c: Double) -> Double {
    if a + b <= c || a + c <= b || b + c <= a { return -1 }
    let s = (a + b + c) / 2
    let area = (s * (s - a) * (s - b) * (s - c)).squareRoot()
    return (area * 100).rounded() / 100
}
