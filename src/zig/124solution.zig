pub fn validDate(date: []const u8) bool {
    var parts = std.mem.splitScalar(u8, std.mem.trim(u8, date, " \t\r\n"), '-');
    const month_str = parts.next() orelse return false;
    const day_str = parts.next() orelse return false;
    const year_str = parts.next() orelse return false;
    if (parts.next() != null) return false;
    const month = std.fmt.parseInt(i64, month_str, 10) catch return false;
    const day = std.fmt.parseInt(i64, day_str, 10) catch return false;
    _ = std.fmt.parseInt(i64, year_str, 10) catch return false;
    if (month < 1 or month > 12) return false;
    const max_day: i64 = switch (month) {
        1, 3, 5, 7, 8, 10, 12 => 31,
        4, 6, 9, 11 => 30,
        else => 29,
    };
    return day >= 1 and day <= max_day;
}
