pub fn longest(strings: []const []const u8) ?[]const u8 {
    if (strings.len == 0) return null;
    var maxi: usize = 0;
    for (strings, 0..) |s, i| {
        if (strings[maxi].len < s.len) maxi = i;
    }
    return strings[maxi];
}
