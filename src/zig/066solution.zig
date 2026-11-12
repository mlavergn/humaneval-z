pub fn digitsum(x: []const u8) i64 {
    var result: i64 = 0;
    for (x) |c| {
        if (std.ascii.isUpper(c)) result += c;
    }
    return result;
}
