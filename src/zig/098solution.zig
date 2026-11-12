pub fn countUpper(s: []const u8) i64 {
    var count: i64 = 0;
    var i: usize = 0;
    while (i < s.len) : (i += 2) {
        if (std.mem.findScalar(u8, "AEIOU", s[i]) != null) count += 1;
    }
    return count;
}
