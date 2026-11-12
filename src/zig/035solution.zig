pub fn maxElement(l: []const i64) i64 {
    var max = l[0];
    for (l) |x| {
        if (x > max) max = x;
    }
    return max;
}
