pub fn checkIfLastCharIsALetter(txt: []const u8) bool {
    const last_space = std.mem.findScalarLast(u8, txt, ' ');
    const last_word = if (last_space) |i| txt[i + 1 ..] else txt;
    return last_word.len == 1 and std.ascii.isAlphabetic(last_word[0]);
}
