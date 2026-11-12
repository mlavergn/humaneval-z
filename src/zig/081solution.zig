pub fn numericalLetterGrade(allocator: std.mem.Allocator, grades: []const f64) ![][]const u8 {
    const result = try allocator.alloc([]const u8, grades.len);
    for (grades, 0..) |g, i| {
        result[i] = if (g == 4.0)
            "A+"
        else if (g > 3.7)
            "A"
        else if (g > 3.3)
            "A-"
        else if (g > 3.0)
            "B+"
        else if (g > 2.7)
            "B"
        else if (g > 2.3)
            "B-"
        else if (g > 2.0)
            "C+"
        else if (g > 1.7)
            "C"
        else if (g > 1.3)
            "C-"
        else if (g > 1.0)
            "D+"
        else if (g > 0.7)
            "D"
        else if (g > 0.0)
            "D-"
        else
            "E";
    }
    return result;
}
