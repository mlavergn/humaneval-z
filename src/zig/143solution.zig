pub fn wordsInSentence(allocator: std.mem.Allocator, sentence: []const u8) ![]u8 {
    const isPrime = struct {
        fn f(n: usize) bool {
            if (n < 2) return false;
            var i: usize = 2;
            while (i * i <= n) : (i += 1) {
                if (n % i == 0) return false;
            }
            return true;
        }
    }.f;
    var result: std.ArrayList(u8) = .empty;
    var words = std.mem.tokenizeAny(u8, sentence, " \t\r\n");
    while (words.next()) |word| {
        if (!isPrime(word.len)) continue;
        if (result.items.len != 0) try result.append(allocator, ' ');
        try result.appendSlice(allocator, word);
    }
    return result.toOwnedSlice(allocator);
}
