pub fn minpath(allocator: std.mem.Allocator, grid: []const []const i64, k: i64) ![]i64 {
    const n = grid.len;
    var val: i64 = @intCast(n * n + 1);
    for (grid, 0..) |row, i| {
        for (row, 0..) |cell, j| {
            if (cell != 1) continue;
            if (i != 0) val = @min(val, grid[i - 1][j]);
            if (j != 0) val = @min(val, grid[i][j - 1]);
            if (i != n - 1) val = @min(val, grid[i + 1][j]);
            if (j != n - 1) val = @min(val, grid[i][j + 1]);
        }
    }
    const ans = try allocator.alloc(i64, @intCast(k));
    for (ans, 0..) |*x, i| x.* = if (i % 2 == 0) 1 else val;
    return ans;
}
