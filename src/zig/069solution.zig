pub fn search(allocator: std.mem.Allocator, lst: []const i64) !i64 {
    var counts: std.AutoHashMapUnmanaged(i64, i64) = .empty;
    defer counts.deinit(allocator);
    for (lst) |x| {
        const entry = try counts.getOrPut(allocator, x);
        entry.value_ptr.* = if (entry.found_existing) entry.value_ptr.* + 1 else 1;
    }
    var max: i64 = -1;
    var it = counts.iterator();
    while (it.next()) |entry| {
        const i = entry.key_ptr.*;
        if (entry.value_ptr.* >= i and i > max) max = i;
    }
    return max;
}
