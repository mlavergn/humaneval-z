pub fn vowelsCount(s: []const u8) i64 {
    var count: i64 = 0;
    for (s) |c| {
        if (std.mem.findScalar(u8, "aeiou", std.ascii.toLower(c)) != null) count += 1;
    }
    if (s.len > 0 and std.ascii.toLower(s[s.len - 1]) == 'y') count += 1;
    return count;
}
