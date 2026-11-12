pub fn howManyTimes(str: []const u8, substring: []const u8) i64 {
    if (substring.len > str.len) return 0;
    var times: i64 = 0;
    for (0..str.len - substring.len + 1) |i| {
        if (std.mem.eql(u8, str[i .. i + substring.len], substring)) times += 1;
    }
    return times;
}
