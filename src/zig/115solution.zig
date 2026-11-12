pub fn maxFill(grid: []const []const i64, capacity: i64) i64 {
    var result: i64 = 0;
    for (grid) |row| {
        var sum: i64 = 0;
        for (row) |x| sum += x;
        result += @divFloor(sum + capacity - 1, capacity);
    }
    return result;
}
