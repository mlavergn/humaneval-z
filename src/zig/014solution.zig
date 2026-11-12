pub fn allPrefixes(allocator: std.mem.Allocator, str: []const u8) ![][]const u8 {
    const prefixes = try allocator.alloc([]const u8, str.len);
    for (0..str.len) |i| prefixes[i] = str[0 .. i + 1];
    return prefixes;
}
