test "fib4" {
    try std.testing.expectEqual(4, fib4(5));
    try std.testing.expectEqual(28, fib4(8));
    try std.testing.expectEqual(104, fib4(10));
    try std.testing.expectEqual(386, fib4(12));
}
