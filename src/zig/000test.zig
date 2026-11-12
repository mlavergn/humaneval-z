test "hasCloseElements" {
    try std.testing.expect(hasCloseElements(&[_]f64{ 11.0, 2.0, 3.9, 4.0, 5.0, 2.2 }, 0.3));
    try std.testing.expect(!hasCloseElements(&[_]f64{ 1.0, 2.0, 3.9, 4.0, 5.0, 2.2 }, 0.05));
    try std.testing.expect(hasCloseElements(&[_]f64{ 1.0, 2.0, 5.9, 4.0, 5.0 }, 0.95));
    try std.testing.expect(!hasCloseElements(&[_]f64{ 1.0, 2.0, 5.9, 4.0, 5.0 }, 0.8));
    try std.testing.expect(hasCloseElements(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0, 2.0 }, 0.1));
    try std.testing.expect(hasCloseElements(&[_]f64{ 1.1, 2.2, 3.1, 4.1, 5.1 }, 1.0));
    try std.testing.expect(!hasCloseElements(&[_]f64{ 1.1, 2.2, 3.1, 4.1, 5.1 }, 0.5));
}
