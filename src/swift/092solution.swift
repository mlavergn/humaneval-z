func anyInt(_ x: Value, _ y: Value, _ z: Value) -> Bool {
    guard case .int(let a) = x, case .int(let b) = y, case .int(let c) = z else { return false }
    return a + b == c || a + c == b || b + c == a
}
