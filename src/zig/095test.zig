test "checkDictCase" {
    try std.testing.expect(checkDictCase(&.{ .{ "p", "pineapple" }, .{ "b", "banana" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "p", "pineapple" }, .{ "A", "banana" }, .{ "B", "banana" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "p", "pineapple" }, .{ "5", "banana" }, .{ "a", "apple" } }));
    try std.testing.expect(!checkDictCase(&.{ .{ "Name", "John" }, .{ "Age", "36" }, .{ "City", "Houston" } }));
    try std.testing.expect(checkDictCase(&.{ .{ "STATE", "NC" }, .{ "ZIP", "12345" } }));
    try std.testing.expect(checkDictCase(&.{ .{ "fruit", "Orange" }, .{ "taste", "Sweet" } }));
    try std.testing.expect(!checkDictCase(&.{}));
}
