test "isMultiplyPrime" {
    try std.testing.expect(!isMultiplyPrime(5));
    try std.testing.expect(isMultiplyPrime(30));
    try std.testing.expect(isMultiplyPrime(8));
    try std.testing.expect(!isMultiplyPrime(10));
    try std.testing.expect(isMultiplyPrime(125));
    try std.testing.expect(isMultiplyPrime(3 * 5 * 7));
    try std.testing.expect(!isMultiplyPrime(3 * 6 * 7));
    try std.testing.expect(!isMultiplyPrime(9 * 9 * 9));
    try std.testing.expect(!isMultiplyPrime(11 * 9 * 9));
    try std.testing.expect(isMultiplyPrime(11 * 13 * 7));
}
