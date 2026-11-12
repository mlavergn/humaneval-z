pub fn fruitDistribution(s: []const u8, n: i64) i64 {
    var remaining = n;
    var words = std.mem.splitScalar(u8, s, ' ');
    while (words.next()) |word| {
        const count = std.fmt.parseInt(i64, word, 10) catch continue;
        remaining -= count;
    }
    return remaining;
}
