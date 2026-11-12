## task_id

```
Zig/111
```

## prompt

```zig
const std = @import("std");

pub const LetterCount = struct { letter: u8, count: i64 };

// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
//
// Example:
// histogram(allocator, 'a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram(allocator, 'a b b a') == {'a': 2, 'b': 2}
// histogram(allocator, 'a b c a b') == {'a': 2, 'b': 2}
// histogram(allocator, 'b b b b a') == {'b': 4}
// histogram(allocator, '') == {}
// Returns the most repeated letters with their count, sorted by letter.
pub fn histogram(allocator: std.mem.Allocator, test_str: []const u8) ![]LetterCount {
```

## declaration

```zig
pub fn histogram(allocator: std.mem.Allocator, test_str: []const u8) ![]LetterCount {
```

## example_test

```zig
test "histogram examples" {
    const cases = [_]struct { input: []const u8, want: []const LetterCount }{
        .{ .input = "a b b a", .want = &.{ .{ .letter = 'a', .count = 2 }, .{ .letter = 'b', .count = 2 } } },
        .{ .input = "a b c a b", .want = &.{ .{ .letter = 'a', .count = 2 }, .{ .letter = 'b', .count = 2 } } },
        .{ .input = "a b c", .want = &.{ .{ .letter = 'a', .count = 1 }, .{ .letter = 'b', .count = 1 }, .{ .letter = 'c', .count = 1 } } },
        .{ .input = "b b b b a", .want = &.{.{ .letter = 'b', .count = 4 }} },
        .{ .input = "", .want = &.{} },
    };
    for (cases) |case| {
        const result = try histogram(std.testing.allocator, case.input);
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualSlices(LetterCount, case.want, result);
    }
}
```
