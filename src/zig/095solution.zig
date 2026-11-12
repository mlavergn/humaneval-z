pub fn checkDictCase(dict: []const [2][]const u8) bool {
    if (dict.len == 0) return false;
    var is_lower = false;
    var is_upper = false;
    for (dict) |entry| {
        for (entry[0]) |c| {
            if (!std.ascii.isAlphabetic(c)) return false;
            if (std.ascii.isUpper(c)) is_upper = true;
            if (std.ascii.isLower(c)) is_lower = true;
            if (is_upper and is_lower) return false;
        }
    }
    return true;
}
