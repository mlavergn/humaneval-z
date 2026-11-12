pub fn getClosestVowel(word: []const u8) []const u8 {
    if (word.len < 3) return "";
    const vowels = "aeiouAEIOU";
    var i = word.len - 2;
    while (i > 0) : (i -= 1) {
        if (std.mem.findScalar(u8, vowels, word[i]) != null and
            std.mem.findScalar(u8, vowels, word[i + 1]) == null and
            std.mem.findScalar(u8, vowels, word[i - 1]) == null)
        {
            return word[i .. i + 1];
        }
    }
    return "";
}
