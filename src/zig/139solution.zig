pub fn specialFactorial(n: i64) i64 {
    var fact_i: i64 = 1;
    var special_fact: i64 = 1;
    var i: i64 = 1;
    while (i <= n) : (i += 1) {
        fact_i *= i;
        special_fact *= fact_i;
    }
    return special_fact;
}
