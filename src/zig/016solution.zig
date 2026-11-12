pub fn countDistinctCharacters(str: []const u8) i64 {
    var seen: [256]bool = @splat(false);
    var count: i64 = 0;
    for (str) |c| {
        const lower = std.ascii.toLower(c);
        if (!seen[lower]) {
            seen[lower] = true;
            count += 1;
        }
    }
    return count;
}
