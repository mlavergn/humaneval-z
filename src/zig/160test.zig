test "doAlgebra" {
    try std.testing.expectEqual(37, try doAlgebra(std.testing.allocator, &[_][]const u8{ "**", "*", "+" }, &[_]i64{ 2, 3, 4, 5 }));
    try std.testing.expectEqual(9, try doAlgebra(std.testing.allocator, &[_][]const u8{ "+", "*", "-" }, &[_]i64{ 2, 3, 4, 5 }));
    try std.testing.expectEqual(8, try doAlgebra(std.testing.allocator, &[_][]const u8{ "//", "*" }, &[_]i64{ 7, 3, 4 }));
}
