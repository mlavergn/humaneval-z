test "truncateNumber" {
    try std.testing.expectEqual(0.5, truncateNumber(3.5));
    try std.testing.expectApproxEqAbs(0.33, truncateNumber(1.33), 1e-6);
    try std.testing.expectApproxEqAbs(0.456, truncateNumber(123.456), 1e-6);
}
