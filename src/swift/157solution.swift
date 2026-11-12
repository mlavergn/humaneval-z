func rightAngleTriangle(a: Int, b: Int, c: Int) -> Bool {
    return a * a == b * b + c * c || b * b == a * a + c * c || c * c == a * a + b * b
}
