pub fn eat(number: i64, need: i64, remaining: i64) [2]i64 {
    if (need <= remaining) return .{ number + need, remaining - need };
    return .{ number + remaining, 0 };
}
