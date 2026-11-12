pub fn compare(allocator: std.mem.Allocator, game: []const i64, guess: []const i64) ![]i64 {
    const result = try allocator.alloc(i64, game.len);
    for (game, guess, 0..) |a, b, i| result[i] = @intCast(@abs(a - b));
    return result;
}
