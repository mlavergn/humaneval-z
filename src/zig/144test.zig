test "simplify" {
    try std.testing.expect(simplify("1/5", "5/1"));
    try std.testing.expect(!simplify("1/6", "2/1"));
    try std.testing.expect(simplify("5/1", "3/1"));
    try std.testing.expect(!simplify("7/10", "10/2"));
    try std.testing.expect(simplify("2/10", "50/10"));
    try std.testing.expect(simplify("7/2", "4/2"));
    try std.testing.expect(simplify("11/6", "6/1"));
    try std.testing.expect(!simplify("2/3", "5/2"));
    try std.testing.expect(!simplify("5/2", "3/5"));
    try std.testing.expect(simplify("2/4", "8/4"));
    try std.testing.expect(simplify("2/4", "4/2"));
    try std.testing.expect(simplify("1/5", "5/1"));
    try std.testing.expect(!simplify("1/5", "1/5"));
}
