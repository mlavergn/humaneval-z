pub fn doAlgebra(allocator: std.mem.Allocator, operator: []const []const u8, operand: []const i64) !i64 {
    const isHigh = struct {
        fn f(op: []const u8) bool {
            return std.mem.eql(u8, op, "*") or std.mem.eql(u8, op, "//") or std.mem.eql(u8, op, "**");
        }
    }.f;
    var ops: std.ArrayList([]const u8) = .empty;
    defer ops.deinit(allocator);
    try ops.appendSlice(allocator, operator);
    var vals: std.ArrayList(i64) = .empty;
    defer vals.deinit(allocator);
    try vals.appendSlice(allocator, operand);
    while (vals.items.len > 1) {
        // Leftmost of *, //, ** first; otherwise the leftmost operator.
        var pos: usize = 0;
        for (ops.items, 0..) |op, i| {
            if (isHigh(op)) {
                pos = i;
                break;
            }
        }
        const op = ops.items[pos];
        const a = vals.items[pos];
        const b = vals.items[pos + 1];
        vals.items[pos] = if (std.mem.eql(u8, op, "+"))
            a + b
        else if (std.mem.eql(u8, op, "-"))
            a - b
        else if (std.mem.eql(u8, op, "*"))
            a * b
        else if (std.mem.eql(u8, op, "//"))
            @divTrunc(a, b)
        else if (std.mem.eql(u8, op, "**"))
            std.math.pow(i64, a, b)
        else
            return error.UnknownOperator;
        _ = ops.orderedRemove(pos);
        _ = vals.orderedRemove(pos + 1);
    }
    return vals.items[0];
}
