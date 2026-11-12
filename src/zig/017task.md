## task_id

```
Zig/17
```

## prompt

```zig
const std = @import("std");

// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
//
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
//
// >>> parseMusic(allocator, "o o| .| o| o| .| .| .| .| o o")
// { 4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4 }
pub fn parseMusic(allocator: std.mem.Allocator, music_string: []const u8) ![]i64 {
```

## declaration

```zig
pub fn parseMusic(allocator: std.mem.Allocator, music_string: []const u8) ![]i64 {
```

## example_test

```zig
test "parseMusic examples" {
    {
        const result = try parseMusic(std.testing.allocator, "o o| .| o| o| .| .| .| .| o o");
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualDeep(&[_]i64{ 4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4 }, result);
    }
}
```
