pub fn belowThreshold(l: []const i64, t: i64) bool {
    for (l) |n| {
        if (n >= t) return false;
    }
    return true;
}
