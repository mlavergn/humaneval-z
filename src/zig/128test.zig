test "prodSigns" {
    {
        const result = (prodSigns(&[_]i64{ 1, 2, 2, -4 })).?;
        try std.testing.expectEqual(-9, result);
    }
    {
        const result = (prodSigns(&[_]i64{ 0, 1 })).?;
        try std.testing.expectEqual(0, result);
    }
    {
        const result = (prodSigns(&[_]i64{ 1, 1, 1, 2, 3, -1, 1 })).?;
        try std.testing.expectEqual(-10, result);
    }
    try std.testing.expect(prodSigns(&[_]i64{}) == null);
    {
        const result = (prodSigns(&[_]i64{ 2, 4, 1, 2, -1, -1, 9 })).?;
        try std.testing.expectEqual(20, result);
    }
    {
        const result = (prodSigns(&[_]i64{ -1, 1, -1, 1 })).?;
        try std.testing.expectEqual(4, result);
    }
    {
        const result = (prodSigns(&[_]i64{ -1, 1, 1, 1 })).?;
        try std.testing.expectEqual(-4, result);
    }
    {
        const result = (prodSigns(&[_]i64{ -1, 1, 1, 0 })).?;
        try std.testing.expectEqual(0, result);
    }
}
