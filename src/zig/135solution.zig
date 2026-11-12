pub fn canArrange(arr: []const i64) i64 {
    var ind: i64 = -1;
    for (1..@max(arr.len, 1)) |i| {
        if (arr[i] < arr[i - 1]) ind = @intCast(i);
    }
    return ind;
}
