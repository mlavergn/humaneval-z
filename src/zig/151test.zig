test "doubleTheDifference" {
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{}));
    try std.testing.expectEqual(25, doubleTheDifference(&[_]f64{ 5, 4 }));
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{ 0.1, 0.2, 0.3 }));
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{ -10, -20, -30 }));
    try std.testing.expectEqual(0, doubleTheDifference(&[_]f64{ -1, -2, 8 }));
    try std.testing.expectEqual(34, doubleTheDifference(&[_]f64{ 0.2, 3, 5 }));
    // The odd numbers from -99 to 99.
    var lst: [100]f64 = undefined;
    var odd_sum: i64 = 0;
    for (&lst, 0..) |*x, k| {
        const i: i64 = -99 + 2 * @as(i64, @intCast(k));
        x.* = @floatFromInt(i);
        if (i > 0) odd_sum += i * i;
    }
    try std.testing.expectEqual(odd_sum, doubleTheDifference(&lst));
}
