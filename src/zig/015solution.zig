pub fn stringSequence(allocator: std.mem.Allocator, n: i64) ![]u8 {
    var seq: std.ArrayList(u8) = .empty;
    var i: i64 = 0;
    while (i <= n) : (i += 1) {
        if (i != 0) try seq.append(allocator, ' ');
        try seq.print(allocator, "{d}", .{i});
    }
    return seq.toOwnedSlice(allocator);
}
