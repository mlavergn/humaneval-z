pub fn correctBracketing(brackets: []const u8) bool {
    var count: i64 = 0;
    for (brackets) |c| {
        if (c == '<') {
            count += 1;
        } else if (c == '>') {
            count -= 1;
        }
        if (count < 0) return false;
    }
    return count == 0;
}
