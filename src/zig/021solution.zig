pub fn rescaleToUnit(allocator: std.mem.Allocator, numbers: []const f64) ![]f64 {
    const smallest = std.mem.min(f64, numbers);
    const largest = std.mem.max(f64, numbers);
    const result = try allocator.dupe(f64, numbers);
    if (smallest == largest) return result;
    for (result) |*x| x.* = (x.* - smallest) / (largest - smallest);
    return result;
}
