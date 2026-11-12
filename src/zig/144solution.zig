pub fn simplify(x: []const u8, n: []const u8) bool {
    const parse = struct {
        fn f(frac: []const u8) [2]i64 {
            const slash = std.mem.findScalar(u8, frac, '/') orelse return .{ 0, 1 };
            return .{
                std.fmt.parseInt(i64, frac[0..slash], 10) catch 0,
                std.fmt.parseInt(i64, frac[slash + 1 ..], 10) catch 1,
            };
        }
    }.f;
    const a = parse(x);
    const b = parse(n);
    return @rem(a[0] * b[0], a[1] * b[1]) == 0;
}
