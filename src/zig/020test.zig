test "findClosestElements" {
    try std.testing.expectEqual([2]f64{ 3.9, 4.0 }, findClosestElements(&[_]f64{ 1.0, 2.0, 3.9, 4.0, 5.0, 2.2 }));
    try std.testing.expectEqual([2]f64{ 5.0, 5.9 }, findClosestElements(&[_]f64{ 1.0, 2.0, 5.9, 4.0, 5.0 }));
    try std.testing.expectEqual([2]f64{ 2.0, 2.2 }, findClosestElements(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.2 }));
    try std.testing.expectEqual([2]f64{ 2.0, 2.0 }, findClosestElements(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.0 }));
    try std.testing.expectEqual([2]f64{ 2.2, 3.1 }, findClosestElements(&[_]f64{ 1.1, 2.2, 3.1, 4.1, 5.1 }));
}
