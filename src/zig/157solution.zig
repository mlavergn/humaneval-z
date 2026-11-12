pub fn rightAngleTriangle(a: i64, b: i64, c: i64) bool {
    return a * a == b * b + c * c or b * b == a * a + c * c or c * c == a * a + b * b;
}
