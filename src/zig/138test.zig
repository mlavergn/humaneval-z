test "isEqualToSumEven" {
    try std.testing.expect(!isEqualToSumEven(4));
    try std.testing.expect(!isEqualToSumEven(6));
    try std.testing.expect(isEqualToSumEven(8));
    try std.testing.expect(isEqualToSumEven(10));
    try std.testing.expect(!isEqualToSumEven(11));
    try std.testing.expect(isEqualToSumEven(12));
    try std.testing.expect(!isEqualToSumEven(13));
    try std.testing.expect(isEqualToSumEven(16));
}
