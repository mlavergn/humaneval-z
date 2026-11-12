pub fn intToMiniRoman(allocator: std.mem.Allocator, number: i64) ![]u8 {
    const num = [_]i64{ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };
    const sym = [_][]const u8{ "m", "cm", "d", "cd", "c", "xc", "l", "xl", "x", "ix", "v", "iv", "i" };
    var result: std.ArrayList(u8) = .empty;
    var rest = number;
    for (num, sym) |value, symbol| {
        while (rest >= value) : (rest -= value) try result.appendSlice(allocator, symbol);
    }
    return result.toOwnedSlice(allocator);
}
