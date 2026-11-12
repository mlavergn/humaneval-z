pub fn closestInteger(value: []const u8) i64 {
    const num = std.fmt.parseFloat(f64, value) catch return 0;
    // @round rounds halfway cases away from zero.
    return @intFromFloat(@round(num));
}
