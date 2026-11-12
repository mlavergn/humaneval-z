pub fn isHappy(s: []const u8) bool {
    if (s.len < 3) return false;
    for (0..s.len - 2) |i| {
        if (s[i] == s[i + 1] or s[i + 1] == s[i + 2] or s[i] == s[i + 2]) return false;
    }
    return true;
}
