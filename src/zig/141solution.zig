pub fn fileNameCheck(file_name: []const u8) []const u8 {
    const dot = std.mem.findScalar(u8, file_name, '.') orelse return "No";
    const name = file_name[0..dot];
    const ext = file_name[dot + 1 ..];
    if (std.mem.findScalar(u8, ext, '.') != null) return "No";
    if (!std.mem.eql(u8, ext, "txt") and !std.mem.eql(u8, ext, "exe") and !std.mem.eql(u8, ext, "dll")) return "No";
    if (name.len == 0 or !std.ascii.isAlphabetic(name[0])) return "No";
    var digit_count: usize = 0;
    for (name) |c| {
        if (std.ascii.isDigit(c)) digit_count += 1;
    }
    return if (digit_count > 3) "No" else "Yes";
}
