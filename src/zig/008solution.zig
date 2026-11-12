pub fn sumProduct(numbers: []const i64) [2]i64 {
    var sum_value: i64 = 0;
    var prod_value: i64 = 1;
    for (numbers) |n| {
        sum_value += n;
        prod_value *= n;
    }
    return .{ sum_value, prod_value };
}
