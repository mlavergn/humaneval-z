pub fn evenOddCount(num: i64) [2]i64 {
    var even_count: i64 = 0;
    var odd_count: i64 = 0;
    var rest: u64 = @abs(num);
    while (true) {
        if (rest % 2 == 0) even_count += 1 else odd_count += 1;
        rest /= 10;
        if (rest == 0) break;
    }
    return .{ even_count, odd_count };
}
