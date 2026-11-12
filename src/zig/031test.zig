test "isPrime" {
    try std.testing.expect(!isPrime(6));
    try std.testing.expect(isPrime(101));
    try std.testing.expect(isPrime(11));
    try std.testing.expect(isPrime(13441));
    try std.testing.expect(isPrime(61));
    try std.testing.expect(!isPrime(4));
    try std.testing.expect(!isPrime(1));
    try std.testing.expect(isPrime(5));
    try std.testing.expect(isPrime(11));
    try std.testing.expect(isPrime(17));
    try std.testing.expect(!isPrime(5 * 17));
    try std.testing.expect(!isPrime(11 * 7));
    try std.testing.expect(!isPrime(13441 * 19));
}
