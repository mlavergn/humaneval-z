pub fn add(lst: []const i64) i64 {
    var sum: i64 = 0;
    var i: usize = 1;
    while (i < lst.len) : (i += 2) {
        if (@rem(lst[i], 2) == 0) sum += lst[i];
    }
    return sum;
}
