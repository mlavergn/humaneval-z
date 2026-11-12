pub fn isSorted(lst: []const i64) bool {
    for (lst, 0..) |x, i| {
        if (i > 0 and lst[i - 1] > x) return false;
        // Sorted, so more than two copies means three equal neighbours.
        if (i > 1 and lst[i - 2] == x and lst[i - 1] == x) return false;
    }
    return true;
}
