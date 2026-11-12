pub fn decodeCyclic(allocator: std.mem.Allocator, s: []const u8) ![]u8 {
    const once = try encodeCyclic(allocator, s);
    defer allocator.free(once);
    return encodeCyclic(allocator, once);
}
