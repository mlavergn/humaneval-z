test "anyInt" {
    try std.testing.expect(anyInt(.{ .int = 2 }, .{ .int = 3 }, .{ .int = 1 }));
    try std.testing.expect(!anyInt(.{ .float = 2.5 }, .{ .int = 2 }, .{ .int = 3 }));
    try std.testing.expect(!anyInt(.{ .float = 1.5 }, .{ .int = 5 }, .{ .float = 3.5 }));
    try std.testing.expect(!anyInt(.{ .int = 2 }, .{ .int = 6 }, .{ .int = 2 }));
    try std.testing.expect(anyInt(.{ .int = 4 }, .{ .int = 2 }, .{ .int = 2 }));
    try std.testing.expect(!anyInt(.{ .float = 2.2 }, .{ .float = 2.2 }, .{ .float = 2.2 }));
    try std.testing.expect(anyInt(.{ .int = -4 }, .{ .int = 6 }, .{ .int = 2 }));
    try std.testing.expect(anyInt(.{ .int = 2 }, .{ .int = 1 }, .{ .int = 1 }));
    try std.testing.expect(anyInt(.{ .int = 3 }, .{ .int = 4 }, .{ .int = 7 }));
    try std.testing.expect(!anyInt(.{ .float = 3.0 }, .{ .int = 4 }, .{ .int = 7 }));
}
