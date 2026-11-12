test "fizzBuzz" {
    try std.testing.expectEqual(0, fizzBuzz(50));
    try std.testing.expectEqual(2, fizzBuzz(78));
    try std.testing.expectEqual(3, fizzBuzz(79));
    try std.testing.expectEqual(3, fizzBuzz(100));
    try std.testing.expectEqual(6, fizzBuzz(200));
    try std.testing.expectEqual(192, fizzBuzz(4000));
    try std.testing.expectEqual(639, fizzBuzz(10000));
    try std.testing.expectEqual(8026, fizzBuzz(100000));
}
