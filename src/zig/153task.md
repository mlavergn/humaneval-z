## task_id

```
Zig/153
```

## prompt

```zig
const std = @import("std");

// You will be given the name of a class (a string) and a list of extensions.
// The extensions are to be used to load additional classes to the class. The
// strength of the extension is as follows: Let CAP be the number of the uppercase
// letters in the extension's name, and let SM be the number of lowercase letters
// in the extension's name, the strength is given by the fraction CAP - SM.
// You should find the strongest extension and return a string in this
// format: ClassName.StrongestExtensionName.
// If there are two or more extensions with the same strength, you should
// choose the one that comes first in the list.
// For example, if you are given "Slices" as the class and a list of the
// extensions: ['SErviNGSliCes', 'Cheese', 'StuFfed'] then you should
// return 'Slices.SErviNGSliCes' since 'SErviNGSliCes' is the strongest extension
// (its strength is -1).
// Example:
// for strongestExtension(allocator, 'my_class', ['AA', 'Be', 'CC']) == 'my_class.AA'
pub fn strongestExtension(allocator: std.mem.Allocator, class_name: []const u8, extensions: []const []const u8) ![]u8 {
```

## declaration

```zig
pub fn strongestExtension(allocator: std.mem.Allocator, class_name: []const u8, extensions: []const []const u8) ![]u8 {
```

## example_test

```zig
test "strongestExtension examples" {
    {
        const result = try strongestExtension(std.testing.allocator, "my_class", &[_][]const u8{ "AA", "Be", "CC" });
        defer std.testing.allocator.free(result);
        try std.testing.expectEqualStrings("my_class.AA", result);
    }
}
```
