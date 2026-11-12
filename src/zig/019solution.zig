pub fn sortNumbers(allocator: std.mem.Allocator, numbers: []const u8) ![]u8 {
    const names = [_][]const u8{ "zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine" };
    var values: std.ArrayList(usize) = .empty;
    defer values.deinit(allocator);
    var words = std.mem.splitScalar(u8, numbers, ' ');
    while (words.next()) |word| {
        for (names, 0..) |name, i| {
            if (std.mem.eql(u8, word, name)) {
                try values.append(allocator, i);
                break;
            }
        }
    }
    std.mem.sort(usize, values.items, {}, std.sort.asc(usize));
    var result: std.ArrayList(u8) = .empty;
    for (values.items, 0..) |v, i| {
        if (i != 0) try result.append(allocator, ' ');
        try result.appendSlice(allocator, names[v]);
    }
    return result.toOwnedSlice(allocator);
}
