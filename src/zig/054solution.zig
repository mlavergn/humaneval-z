pub fn sameChars(s0: []const u8, s1: []const u8) bool {
    var set0: [256]bool = @splat(false);
    var set1: [256]bool = @splat(false);
    for (s0) |c| set0[c] = true;
    for (s1) |c| set1[c] = true;
    return std.mem.eql(bool, &set0, &set1);
}
