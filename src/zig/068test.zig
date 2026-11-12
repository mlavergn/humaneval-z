test "pluck" {
    try std.testing.expectEqual([2]i64{ 2, 1 }, pluck(&[_]i64{ 4, 2, 3 }).?);
    try std.testing.expectEqual([2]i64{ 2, 1 }, pluck(&[_]i64{ 1, 2, 3 }).?);
    try std.testing.expect(pluck(&[_]i64{}) == null);
    try std.testing.expectEqual([2]i64{ 0, 1 }, pluck(&[_]i64{ 5, 0, 3, 0, 4, 2 }).?);
    try std.testing.expectEqual([2]i64{ 0, 3 }, pluck(&[_]i64{ 1, 2, 3, 0, 5, 3 }).?);
    try std.testing.expectEqual([2]i64{ 4, 1 }, pluck(&[_]i64{ 5, 4, 8, 4, 8 }).?);
    try std.testing.expectEqual([2]i64{ 6, 1 }, pluck(&[_]i64{ 7, 6, 7, 1 }).?);
    try std.testing.expect(pluck(&[_]i64{ 7, 9, 7, 1 }) == null);
}
