pub fn hexKey(num: []const u8) i64 {
    var total: i64 = 0;
    for (num) |c| {
        if (std.mem.findScalar(u8, "2357BD", c) != null) total += 1;
    }
    return total;
}
