pub fn findMax(words: []const []const u8) []const u8 {
    const uniqueChars = struct {
        fn f(word: []const u8) usize {
            var seen: [256]bool = @splat(false);
            var count: usize = 0;
            for (word) |c| {
                if (!seen[c]) {
                    seen[c] = true;
                    count += 1;
                }
            }
            return count;
        }
    }.f;
    var best = words[0];
    var best_count = uniqueChars(best);
    for (words[1..]) |word| {
        const count = uniqueChars(word);
        if (count > best_count or (count == best_count and std.mem.lessThan(u8, word, best))) {
            best = word;
            best_count = count;
        }
    }
    return best;
}
