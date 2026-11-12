pub fn decimalToBinary(allocator: std.mem.Allocator, decimal: i64) ![]u8 {
    return std.fmt.allocPrint(allocator, "db{b}db", .{decimal});
}
