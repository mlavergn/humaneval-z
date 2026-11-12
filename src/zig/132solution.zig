pub fn isNested(allocator: std.mem.Allocator, s: []const u8) !bool {
    var opening: std.ArrayList(usize) = .empty;
    defer opening.deinit(allocator);
    var closing: std.ArrayList(usize) = .empty;
    defer closing.deinit(allocator);
    for (s, 0..) |c, i| {
        if (c == '[') try opening.append(allocator, i) else try closing.append(allocator, i);
    }
    std.mem.reverse(usize, closing.items);
    var cnt: usize = 0;
    var i: usize = 0;
    for (opening.items) |idx| {
        if (i < closing.items.len and idx < closing.items[i]) {
            cnt += 1;
            i += 1;
        }
    }
    return cnt >= 2;
}
