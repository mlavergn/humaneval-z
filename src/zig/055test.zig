test "fib" {
    try std.testing.expectEqual(55, fib(10));
    try std.testing.expectEqual(1, fib(1));
    try std.testing.expectEqual(21, fib(8));
    try std.testing.expectEqual(89, fib(11));
    try std.testing.expectEqual(144, fib(12));
}
