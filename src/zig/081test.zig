test "numericalLetterGrade" {
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 4.0, 3, 1.7, 2, 3.5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "A+", "B", "C-", "C", "A-" }, result);
    }
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 1.2 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "D+" }, result);
    }
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 0.5 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "D-" }, result);
    }
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 0.0 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "E" }, result);
    }
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 1, 0.3, 1.5, 2.8, 3.3 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "D", "D-", "C-", "B", "B+" }, result);
    }
    {
        const result = try numericalLetterGrade(std.testing.allocator, &[_]f64{ 0, 0.7 });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_][]const u8{ "E", "D-" }, result);
    }
}
