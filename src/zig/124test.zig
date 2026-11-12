test "validDate" {
    try std.testing.expect(validDate("03-11-2000"));
    try std.testing.expect(!validDate("15-01-2012"));
    try std.testing.expect(!validDate("04-0-2040"));
    try std.testing.expect(validDate("06-04-2020"));
    try std.testing.expect(validDate("01-01-2007"));
    try std.testing.expect(!validDate("03-32-2011"));
    try std.testing.expect(!validDate(""));
    try std.testing.expect(!validDate("04-31-3000"));
    try std.testing.expect(validDate("06-06-2005"));
    try std.testing.expect(!validDate("21-31-2000"));
    try std.testing.expect(validDate("04-12-2003"));
    try std.testing.expect(!validDate("04122003"));
    try std.testing.expect(!validDate("20030412"));
    try std.testing.expect(!validDate("2003-04"));
    try std.testing.expect(!validDate("2003-04-12"));
    try std.testing.expect(!validDate("04-2003"));
}
