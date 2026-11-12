pub fn compareOne(a: Value, b: Value) ?Value {
    const toFloat = struct {
        fn f(v: Value) f64 {
            return switch (v) {
                .int => |i| @floatFromInt(i),
                .float => |x| x,
                .string => |s| blk: {
                    // A real number written as a string may use '.' or ','.
                    var buf: [64]u8 = undefined;
                    if (s.len > buf.len) break :blk 0;
                    const t = buf[0..s.len];
                    for (s, 0..) |c, i| t[i] = if (c == ',') '.' else c;
                    break :blk std.fmt.parseFloat(f64, t) catch 0;
                },
                else => 0,
            };
        }
    }.f;
    const fa = toFloat(a);
    const fb = toFloat(b);
    if (fa == fb) return null;
    return if (fa > fb) a else b;
}
