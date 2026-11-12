pub fn sortArray(allocator: std.mem.Allocator, array: []const i64) ![]i64 {
    const arr = try allocator.dupe(i64, array);
    if (arr.len == 0) return arr;
    if (@rem(arr[0] + arr[arr.len - 1], 2) == 0) {
        std.mem.sort(i64, arr, {}, std.sort.desc(i64));
    } else {
        std.mem.sort(i64, arr, {}, std.sort.asc(i64));
    }
    return arr;
}
