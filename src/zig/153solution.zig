pub fn strongestExtension(allocator: std.mem.Allocator, class_name: []const u8, extensions: []const []const u8) ![]u8 {
    var strong = extensions[0];
    var my_val: i64 = std.math.minInt(i64);
    for (extensions) |s| {
        var val: i64 = 0;
        for (s) |c| {
            if (std.ascii.isUpper(c)) val += 1;
            if (std.ascii.isLower(c)) val -= 1;
        }
        if (val > my_val) {
            strong = s;
            my_val = val;
        }
    }
    return std.fmt.allocPrint(allocator, "{s}.{s}", .{ class_name, strong });
}
