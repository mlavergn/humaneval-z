pub fn monotonic(l: []const i64) bool {
    var increasing = false;
    var decreasing = false;
    for (1..@max(l.len, 1)) |i| {
        if (l[i] > l[i - 1]) increasing = true;
        if (l[i] < l[i - 1]) decreasing = true;
    }
    return !(increasing and decreasing);
}
