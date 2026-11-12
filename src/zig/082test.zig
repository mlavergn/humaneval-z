test "primeLength" {
    try std.testing.expect(primeLength("Hello"));
    try std.testing.expect(primeLength("abcdcba"));
    try std.testing.expect(primeLength("kittens"));
    try std.testing.expect(!primeLength("orange"));
    try std.testing.expect(primeLength("wow"));
    try std.testing.expect(primeLength("world"));
    try std.testing.expect(primeLength("MadaM"));
    try std.testing.expect(primeLength("Wow"));
    try std.testing.expect(!primeLength(""));
    try std.testing.expect(primeLength("HI"));
    try std.testing.expect(primeLength("go"));
    try std.testing.expect(!primeLength("gogo"));
    try std.testing.expect(!primeLength("aaaaaaaaaaaaaaa"));
    try std.testing.expect(primeLength("Madam"));
    try std.testing.expect(!primeLength("M"));
    try std.testing.expect(!primeLength("0"));
}
