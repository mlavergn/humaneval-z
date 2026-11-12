pub fn meanAbsoluteDeviation(numbers: []const f64) f64 {
    const n: f64 = @floatFromInt(numbers.len);
    var sum: f64 = 0;
    for (numbers) |x| sum += x;
    const mean = sum / n;
    var deviation: f64 = 0;
    for (numbers) |x| deviation += @abs(x - mean);
    return deviation / n;
}
