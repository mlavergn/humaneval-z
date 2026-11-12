pub fn hasCloseElements(numbers: []const f64, threshold: f64) bool {
    for (numbers, 0..) |a, i| {
        for (numbers[i + 1 ..]) |b| {
            if (@abs(a - b) < threshold) return true;
        }
    }
    return false;
}
