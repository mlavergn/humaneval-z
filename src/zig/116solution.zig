pub fn sortArray(allocator: std.mem.Allocator, arr: []const i64) ![]i64 {
    const result = try allocator.dupe(i64, arr);
    const byOnesThenValue = struct {
        fn lessThan(_: void, a: i64, b: i64) bool {
            const ones_a = @popCount(@abs(a));
            const ones_b = @popCount(@abs(b));
            if (ones_a != ones_b) return ones_a < ones_b;
            return a < b;
        }
    }.lessThan;
    std.mem.sort(i64, result, {}, byOnesThenValue);
    return result;
}
