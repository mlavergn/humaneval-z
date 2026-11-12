pub fn bf(planet1: []const u8, planet2: []const u8) []const []const u8 {
    var pos1: ?usize = null;
    var pos2: ?usize = null;
    for (planet_names, 0..) |name, i| {
        if (std.mem.eql(u8, planet1, name)) pos1 = i;
        if (std.mem.eql(u8, planet2, name)) pos2 = i;
    }
    const p1 = pos1 orelse return &.{};
    const p2 = pos2 orelse return &.{};
    if (p1 == p2) return &.{};
    return planet_names[@min(p1, p2) + 1 .. @max(p1, p2)];
}

const planet_names = [_][]const u8{ "Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune" };
