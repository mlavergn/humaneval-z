test "meanAbsoluteDeviation" {
    try std.testing.expectApproxEqAbs(2.0 / 3.0, meanAbsoluteDeviation(&[_]f64{ 1.0, 2.0, 3.0 }), 1e-6);
    try std.testing.expectApproxEqAbs(1.0, meanAbsoluteDeviation(&[_]f64{ 1.0, 2.0, 3.0, 4.0 }), 1e-6);
    try std.testing.expectApproxEqAbs(6.0 / 5.0, meanAbsoluteDeviation(&[_]f64{ 1.0, 2.0, 3.0, 4.0, 5.0 }), 1e-6);
}
