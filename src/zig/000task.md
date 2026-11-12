## task_id

```
Zig/0
```

## prompt

```zig
const std = @import("std");

// Check if in given list of numbers, are any two numbers closer to each other than given threshold.
// >>> hasCloseElements(&.{ 1.0, 2.0, 3.0 }, 0.5)
// false
// >>> hasCloseElements(&.{ 1.0, 2.8, 3.0, 4.0, 5.0, 2.0 }, 0.3)
// true
pub fn hasCloseElements(numbers: []const f64, threshold: f64) bool {
```

## declaration

```zig
pub fn hasCloseElements(numbers: []const f64, threshold: f64) bool {
```

## example_test

```zig
test "hasCloseElements examples" {
    try std.testing.expect(!hasCloseElements(&[_]f64{ 1.0, 2.0, 3.0 }, 0.5));
    try std.testing.expect(hasCloseElements(&[_]f64{ 1.0, 2.8, 3.0, 4.0, 5.0, 2.0 }, 0.3));
}
```
