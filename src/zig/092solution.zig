pub fn anyInt(x: Value, y: Value, z: Value) bool {
    if (x != .int or y != .int or z != .int) return false;
    const a = x.int;
    const b = y.int;
    const c = z.int;
    return a + b == c or a + c == b or b + c == a;
}
