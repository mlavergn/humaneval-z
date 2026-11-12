pub fn parseMusic(allocator: std.mem.Allocator, music_string: []const u8) ![]i64 {
    var result: std.ArrayList(i64) = .empty;
    var notes = std.mem.splitScalar(u8, music_string, ' ');
    while (notes.next()) |note| {
        if (std.mem.eql(u8, note, "o")) {
            try result.append(allocator, 4);
        } else if (std.mem.eql(u8, note, "o|")) {
            try result.append(allocator, 2);
        } else if (std.mem.eql(u8, note, ".|")) {
            try result.append(allocator, 1);
        }
    }
    return result.toOwnedSlice(allocator);
}
