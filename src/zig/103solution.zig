pub fn roundedAvg(allocator: std.mem.Allocator, n: i64, m: i64) !?[]u8 {
    if (m < n) return null;
    const avg: f64 = @as(f64, @floatFromInt(n + m)) / 2.0;
    const rounded: i64 = @intFromFloat(@round(avg));
    return try std.fmt.allocPrint(allocator, "0b{b}", .{rounded});
}
