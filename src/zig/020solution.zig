pub fn findClosestElements(numbers: []const f64) [2]f64 {
    var distance = std.math.floatMax(f64);
    var closest_pair: [2]f64 = .{ 0, 0 };
    for (numbers, 0..) |a, i| {
        for (numbers, 0..) |b, j| {
            if (i == j) continue;
            const new_distance = @abs(a - b);
            if (new_distance < distance) {
                distance = new_distance;
                closest_pair = .{ @min(a, b), @max(a, b) };
            }
        }
    }
    return closest_pair;
}
