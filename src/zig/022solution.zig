pub fn filterIntegers(allocator: std.mem.Allocator, values: []const Value) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    for (values) |value| {
        switch (value) {
            .int => |i| try result.append(allocator, i),
            else => {},
        }
    }
    return result.toOwnedSlice(allocator);
}
