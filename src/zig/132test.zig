test "isNested" {
    try std.testing.expect((try isNested(std.testing.allocator, "[[]]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[]]]]]]][[[[[]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[][]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "'[]'")));
    try std.testing.expect((try isNested(std.testing.allocator, "[[[[]]]]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[]]]]]]]]]]")));
    try std.testing.expect((try isNested(std.testing.allocator, "[][][[]]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[[]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[]]")));
    try std.testing.expect((try isNested(std.testing.allocator, "[[]][[")));
    try std.testing.expect((try isNested(std.testing.allocator, "[[][]]")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "[[[[[[[[")));
    try std.testing.expect(!(try isNested(std.testing.allocator, "]]]]]]]]")));
}
