pub fn isBored(s: []const u8) i64 {
    var sum: i64 = 0;
    var sentences = std.mem.splitAny(u8, s, ".?!");
    while (sentences.next()) |raw| {
        const sentence = std.mem.trimStart(u8, raw, " \t\r\n");
        if (std.mem.startsWith(u8, sentence, "I ")) sum += 1;
    }
    return sum;
}
