pub fn separateParenGroups(allocator: std.mem.Allocator, paren_string: []const u8) ![][]u8 {
    var result: std.ArrayList([]u8) = .empty;
    var current: std.ArrayList(u8) = .empty;
    defer current.deinit(allocator);
    var depth: i64 = 0;
    for (paren_string) |c| {
        if (c == '(') {
            depth += 1;
            try current.append(allocator, c);
        } else if (c == ')') {
            depth -= 1;
            try current.append(allocator, c);
            if (depth == 0) {
                try result.append(allocator, try current.toOwnedSlice(allocator));
            }
        }
    }
    return result.toOwnedSlice(allocator);
}
