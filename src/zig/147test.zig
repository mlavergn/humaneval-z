test "getMaxTriples" {
    try std.testing.expectEqual(1, try getMaxTriples(std.testing.allocator, 5));
    try std.testing.expectEqual(4, try getMaxTriples(std.testing.allocator, 6));
    try std.testing.expectEqual(36, try getMaxTriples(std.testing.allocator, 10));
    try std.testing.expectEqual(53361, try getMaxTriples(std.testing.allocator, 100));
}
