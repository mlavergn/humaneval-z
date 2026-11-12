pub fn removeDuplicates(allocator: std.mem.Allocator, numbers: []const i64) ![]i64 {
    var counts: std.AutoHashMapUnmanaged(i64, usize) = .empty;
    defer counts.deinit(allocator);
    for (numbers) |n| {
        const entry = try counts.getOrPut(allocator, n);
        entry.value_ptr.* = if (entry.found_existing) entry.value_ptr.* + 1 else 1;
    }
    var result: std.ArrayList(i64) = .empty;
    for (numbers) |n| {
        if (counts.get(n).? <= 1) try result.append(allocator, n);
    }
    return result.toOwnedSlice(allocator);
}
