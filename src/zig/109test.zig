test "moveOneBall" {
    try std.testing.expect((try moveOneBall(std.testing.allocator, &[_]i64{ 3, 4, 5, 1, 2 })));
    try std.testing.expect((try moveOneBall(std.testing.allocator, &[_]i64{ 3, 5, 10, 1, 2 })));
    try std.testing.expect(!(try moveOneBall(std.testing.allocator, &[_]i64{ 4, 3, 1, 2 })));
    try std.testing.expect(!(try moveOneBall(std.testing.allocator, &[_]i64{ 3, 5, 4, 1, 2 })));
    try std.testing.expect((try moveOneBall(std.testing.allocator, &[_]i64{})));
}
