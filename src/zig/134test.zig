test "checkIfLastCharIsALetter" {
    try std.testing.expect(!checkIfLastCharIsALetter("apple"));
    try std.testing.expect(checkIfLastCharIsALetter("apple pi e"));
    try std.testing.expect(!checkIfLastCharIsALetter("eeeee"));
    try std.testing.expect(checkIfLastCharIsALetter("A"));
    try std.testing.expect(!checkIfLastCharIsALetter("Pumpkin pie "));
    try std.testing.expect(!checkIfLastCharIsALetter("Pumpkin pie 1"));
    try std.testing.expect(!checkIfLastCharIsALetter(""));
    try std.testing.expect(!checkIfLastCharIsALetter("eeeee e "));
    try std.testing.expect(!checkIfLastCharIsALetter("apple pie"));
    try std.testing.expect(!checkIfLastCharIsALetter("apple pi e "));
}
