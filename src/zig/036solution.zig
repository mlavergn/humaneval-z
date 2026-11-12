pub fn fizzBuzz(n: i64) i64 {
    var ans: i64 = 0;
    var i: i64 = 0;
    while (i < n) : (i += 1) {
        if (@rem(i, 11) != 0 and @rem(i, 13) != 0) continue;
        var x = i;
        while (x > 0) : (x = @divTrunc(x, 10)) {
            if (@rem(x, 10) == 7) ans += 1;
        }
    }
    return ans;
}
