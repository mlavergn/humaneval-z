test "compareOne" {
    try std.testing.expectEqualDeep(@as(?Value, .{ .int = 2 }), compareOne(.{ .int = 1 }, .{ .int = 2 }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .float = 2.5 }), compareOne(.{ .int = 1 }, .{ .float = 2.5 }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .int = 3 }), compareOne(.{ .int = 2 }, .{ .int = 3 }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .int = 6 }), compareOne(.{ .int = 5 }, .{ .int = 6 }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .string = "2,3" }), compareOne(.{ .int = 1 }, .{ .string = "2,3" }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .string = "6" }), compareOne(.{ .string = "5,1" }, .{ .string = "6" }));
    try std.testing.expectEqualDeep(@as(?Value, .{ .string = "2" }), compareOne(.{ .string = "1" }, .{ .string = "2" }));
    try std.testing.expectEqualDeep(@as(?Value, null), compareOne(.{ .string = "1" }, .{ .int = 1 }));
}
