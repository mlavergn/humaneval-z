pub fn stringToMd5(allocator: std.mem.Allocator, text: []const u8) !?[]u8 {
    if (text.len == 0) return null;
    var digest: [std.crypto.hash.Md5.digest_length]u8 = undefined;
    std.crypto.hash.Md5.hash(text, &digest, .{});
    const hex = std.fmt.bytesToHex(digest, .lower);
    return try allocator.dupe(u8, &hex);
}
