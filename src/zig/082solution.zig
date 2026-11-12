pub fn primeLength(s: []const u8) bool {
    const l = s.len;
    if (l < 2) return false;
    var i: usize = 2;
    while (i * i <= l) : (i += 1) {
        if (l % i == 0) return false;
    }
    return true;
}
