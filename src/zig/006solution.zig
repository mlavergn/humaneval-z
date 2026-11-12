pub fn parseNestedParens(allocator: std.mem.Allocator, paren_string: []const u8) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    var groups = std.mem.splitScalar(u8, paren_string, ' ');
    while (groups.next()) |group| {
        var depth: i64 = 0;
        var max_depth: i64 = 0;
        for (group) |c| {
            if (c == '(') {
                depth += 1;
                max_depth = @max(max_depth, depth);
            } else {
                depth -= 1;
            }
        }
        try result.append(allocator, max_depth);
    }
    return result.toOwnedSlice(allocator);
}
