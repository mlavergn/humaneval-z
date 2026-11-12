pub fn fixSpaces(allocator: std.mem.Allocator, text: []const u8) ![]u8 {
    var result: std.ArrayList(u8) = .empty;
    var run: usize = 0;
    for (text) |c| {
        if (c == ' ') {
            run += 1;
            continue;
        }
        if (run > 2) {
            try result.append(allocator, '-');
        } else {
            try result.appendNTimes(allocator, '_', run);
        }
        try result.append(allocator, c);
        run = 0;
    }
    if (run > 2) {
        try result.append(allocator, '-');
    } else if (run > 0) {
        try result.append(allocator, '_');
    }
    return result.toOwnedSlice(allocator);
}
