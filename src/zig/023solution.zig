pub fn strlen(str: []const u8) i64 {
    return @intCast(str.len);
}
