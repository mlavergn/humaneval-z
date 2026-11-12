pub fn reverseDelete(allocator: std.mem.Allocator, s: []const u8, c: []const u8) !ReverseDeleteResult {
    var kept: std.ArrayList(u8) = .empty;
    for (s) |ch| {
        if (std.mem.findScalar(u8, c, ch) == null) try kept.append(allocator, ch);
    }
    const str = try kept.toOwnedSlice(allocator);
    var is_palindrome = true;
    for (0..str.len / 2) |i| {
        if (str[i] != str[str.len - 1 - i]) {
            is_palindrome = false;
            break;
        }
    }
    return .{ .string = str, .is_palindrome = is_palindrome };
}
