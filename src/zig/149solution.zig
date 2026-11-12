pub fn sortedListSum(allocator: std.mem.Allocator, lst: []const []const u8) ![][]const u8 {
    var result: std.ArrayList([]const u8) = .empty;
    for (lst) |s| {
        if (s.len % 2 == 0) try result.append(allocator, s);
    }
    const byLengthThenAlpha = struct {
        fn lessThan(_: void, a: []const u8, b: []const u8) bool {
            if (a.len != b.len) return a.len < b.len;
            return std.mem.lessThan(u8, a, b);
        }
    }.lessThan;
    std.mem.sort([]const u8, result.items, {}, byLengthThenAlpha);
    return result.toOwnedSlice(allocator);
}
