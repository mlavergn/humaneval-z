pub fn makePalindrome(allocator: std.mem.Allocator, str: []const u8) ![]u8 {
    if (std.mem.trim(u8, str, " \t\r\n").len == 0) return allocator.alloc(u8, 0);
    var beginning_of_suffix: usize = 0;
    while (!isPalindrome(str[beginning_of_suffix..])) beginning_of_suffix += 1;
    const result = try allocator.alloc(u8, str.len + beginning_of_suffix);
    @memcpy(result[0..str.len], str);
    for (0..beginning_of_suffix) |k| {
        result[str.len + k] = str[beginning_of_suffix - 1 - k];
    }
    return result;
}
