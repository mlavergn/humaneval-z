pub fn changeBase(allocator: std.mem.Allocator, x: i64, base: i64) ![]u8 {
    if (x < base) return std.fmt.allocPrint(allocator, "{d}", .{x});
    const high = try changeBase(allocator, @divTrunc(x, base), base);
    defer allocator.free(high);
    const low = try changeBase(allocator, @rem(x, base), base);
    defer allocator.free(low);
    return std.mem.concat(allocator, u8, &.{ high, low });
}
