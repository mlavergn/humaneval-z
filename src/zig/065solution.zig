pub fn circularShift(allocator: std.mem.Allocator, x: i64, shift: i64) ![]u8 {
    const s = try std.fmt.allocPrint(allocator, "{d}", .{x});
    if (shift > s.len) {
        std.mem.reverse(u8, s);
        return s;
    }
    std.mem.rotate(u8, s, s.len - @as(usize, @intCast(shift)));
    return s;
}
