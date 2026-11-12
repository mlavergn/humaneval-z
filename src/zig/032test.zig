test "findZero" {
    // Random polynomials with an even number of non-zero coefficients
    // (fixed seed, as in the Go test).
    var prng = std.Random.DefaultPrng.init(42);
    const random = prng.random();
    for (0..100) |_| {
        const ncoeff = 2 * random.intRangeLessThan(usize, 1, 4);
        var coeffs: [6]i64 = undefined;
        for (coeffs[0..ncoeff]) |*c| {
            c.* = random.intRangeLessThan(i64, -10, 10);
            if (c.* == 0) c.* = 1;
        }
        const solution = findZero(coeffs[0..ncoeff]);
        try std.testing.expect(@abs(poly(coeffs[0..ncoeff], solution)) < 1e-4);
    }
}
