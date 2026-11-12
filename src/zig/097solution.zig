pub fn multiply(a: i64, b: i64) i64 {
    return @intCast(@abs(@rem(a, 10)) * @abs(@rem(b, 10)));
}
