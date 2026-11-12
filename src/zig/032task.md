## task_id

```
Zig/32
```

## prompt

```zig
const std = @import("std");

// Evaluates polynomial with coefficients xs at point x.
// return xs[0] + xs[1] * x + xs[1] * x^2 + .... xs[n] * x^n
pub fn poly(xs: []const i64, x: f64) f64 {
    var sum: f64 = 0;
    for (xs, 0..) |coeff, i| {
        sum += @as(f64, @floatFromInt(coeff)) * std.math.pow(f64, x, @floatFromInt(i));
    }
    return sum;
}

// xs are coefficients of a polynomial.
// findZero find x such that poly(x) = 0.
// findZero returns only only zero point, even if there are many.
// Moreover, findZero only takes list xs having even number of coefficients
// and largest non zero coefficient as it guarantees
// a solution.
// >>> round(findZero([1, 2]), 2) # f(x) = 1 + 2x
// -0.5
// >>> round(findZero([-6, 11, -6, 1]), 2) # (x - 1) * (x - 2) * (x - 3) = -6 + 11x - 6x^2 + x^3
// 1.0
pub fn findZero(xs: []const i64) f64 {
```

## declaration

```zig
pub fn findZero(xs: []const i64) f64 {
```

## example_test

```zig
test "findZero examples" {
    try std.testing.expectApproxEqAbs(-0.5, findZero(&[_]i64{ 1, 2 }), 1e-4);
    try std.testing.expectApproxEqAbs(1.0, findZero(&[_]i64{ -6, 11, -6, 1 }), 1e-4);
}
```
