## task_id

```
Zig/91
```

## prompt

```zig
const std = @import("std");

// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
//
// For example:
// >>> isBored("Hello world")
// 0
// >>> isBored("The sky is blue. The sun is shining. I love this weather")
// 1
pub fn isBored(s: []const u8) i64 {
```

## declaration

```zig
pub fn isBored(s: []const u8) i64 {
```

## example_test

```zig
test "isBored examples" {
    try std.testing.expectEqual(0, isBored("Hello world"));
    try std.testing.expectEqual(1, isBored("The sky is blue. The sun is shining. I love this weather"));
}
```
