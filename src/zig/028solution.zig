pub fn concatenate(allocator: std.mem.Allocator, strings: []const []const u8) ![]u8 {
    return std.mem.concat(allocator, u8, strings);
}
