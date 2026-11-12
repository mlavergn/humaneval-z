pub fn cycpatternCheck(a: []const u8, b: []const u8) bool {
    const l = b.len;
    if (l == 0) return true;
    if (l > a.len) return false;
    for (0..a.len - l + 1) |i| {
        for (0..l) |shift| {
            const matches = for (0..l) |k| {
                if (a[i + k] != b[(shift + k) % l]) break false;
            } else true;
            if (matches) return true;
        }
    }
    return false;
}
