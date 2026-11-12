pub fn digits(n: i64) i64 {
    var product: i64 = 1;
    var odd_count: i64 = 0;
    var rest = n;
    while (rest > 0) : (rest = @divTrunc(rest, 10)) {
        const d = @rem(rest, 10);
        if (@rem(d, 2) == 1) {
            product *= d;
            odd_count += 1;
        }
    }
    return if (odd_count == 0) 0 else product;
}
