pub fn correctBracketing(brackets: []const u8) bool {
    var open: i64 = 0;
    for (brackets) |c| {
        if (c == '(') {
            open += 1;
        } else if (c == ')') {
            open -= 1;
        }
        if (open < 0) return false;
    }
    return open == 0;
}
