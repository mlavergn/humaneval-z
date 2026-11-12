pub fn countUpTo(allocator: std.mem.Allocator, n: i64) ![]i64 {
    var primes: std.ArrayList(i64) = .empty;
    var i: i64 = 2;
    while (i < n) : (i += 1) {
        const is_prime = for (primes.items) |p| {
            if (p * p > i) break true;
            if (@rem(i, p) == 0) break false;
        } else true;
        if (is_prime) try primes.append(allocator, i);
    }
    return primes.toOwnedSlice(allocator);
}
