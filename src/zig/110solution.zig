pub fn exchange(lst1: []const i64, lst2: []const i64) []const u8 {
    var odd: usize = 0;
    var even: usize = 0;
    for (lst1) |x| {
        if (@rem(x, 2) != 0) odd += 1;
    }
    for (lst2) |x| {
        if (@rem(x, 2) == 0) even += 1;
    }
    return if (even >= odd) "YES" else "NO";
}
