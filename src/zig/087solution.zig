pub fn getRow(allocator: std.mem.Allocator, lst: []const []const i64, x: i64) ![][2]i64 {
    var coords: std.ArrayList([2]i64) = .empty;
    for (lst, 0..) |row, i| {
        // Columns in descending order within each row.
        var j = row.len;
        while (j > 0) {
            j -= 1;
            if (row[j] == x) try coords.append(allocator, .{ @intCast(i), @intCast(j) });
        }
    }
    return coords.toOwnedSlice(allocator);
}
