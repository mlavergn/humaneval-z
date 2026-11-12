## task_id

```
Zig/4
```

## prompt

```zig
const std = @import("std");

// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> meanAbsoluteDeviation(&.{ 1.0, 2.0, 3.0, 4.0 })
// 1.0
pub fn meanAbsoluteDeviation(numbers: []const f64) f64 {
```

## declaration

```zig
pub fn meanAbsoluteDeviation(numbers: []const f64) f64 {
```

## example_test

```zig
test "meanAbsoluteDeviation examples" {
    try std.testing.expectApproxEqAbs(1.0, meanAbsoluteDeviation(&[_]f64{ 1.0, 2.0, 3.0, 4.0 }), 1e-6);
}
```
