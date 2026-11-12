pub fn oddCount(allocator: std.mem.Allocator, lst: []const []const u8) ![][]u8 {
    const result = try allocator.alloc([]u8, lst.len);
    for (lst, 0..) |digits, i| {
        var n: i64 = 0;
        for (digits) |d| {
            if ((d - '0') % 2 == 1) n += 1;
        }
        result[i] = try std.fmt.allocPrint(allocator, "the number of odd elements {d}n the str{d}ng {d} of the {d}nput.", .{ n, n, n, n });
    }
    return result;
}
