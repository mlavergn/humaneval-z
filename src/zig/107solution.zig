pub fn evenOddPalindrome(n: i64) [2]i64 {
    const isPalindrome = struct {
        fn f(x: i64) bool {
            var reversed: i64 = 0;
            var rest = x;
            while (rest > 0) : (rest = @divTrunc(rest, 10)) reversed = reversed * 10 + @rem(rest, 10);
            return reversed == x;
        }
    }.f;
    var even_count: i64 = 0;
    var odd_count: i64 = 0;
    var i: i64 = 1;
    while (i <= n) : (i += 1) {
        if (!isPalindrome(i)) continue;
        if (@rem(i, 2) == 0) even_count += 1 else odd_count += 1;
    }
    return .{ even_count, odd_count };
}
