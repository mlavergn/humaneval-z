pub fn smallestChange(arr: []const i64) i64 {
    var count: i64 = 0;
    for (0..arr.len / 2) |i| {
        if (arr[i] != arr[arr.len - 1 - i]) count += 1;
    }
    return count;
}
