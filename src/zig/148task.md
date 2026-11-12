## task_id

```
Zig/148
```

## prompt

```zig
const std = @import("std");

// There are eight planets in our solar system: the closerst to the Sun
// is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn,
// Uranus, Neptune.
// Write a function that takes two planet names as strings planet1 and planet2.
// The function should return a tuple containing all planets whose orbits are
// located between the orbit of planet1 and the orbit of planet2, sorted by
// the proximity to the sun.
// The function should return an empty tuple if planet1 or planet2
// are not correct planet names.
// Examples
// bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
// bf("Earth", "Mercury") ==> ("Venus")
// bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
// Returns a slice of a static table; nothing to free.
pub fn bf(planet1: []const u8, planet2: []const u8) []const []const u8 {
```

## declaration

```zig
pub fn bf(planet1: []const u8, planet2: []const u8) []const []const u8 {
```

## example_test

```zig
test "bf examples" {
    {
        const result = bf("Jupiter", "Neptune");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Saturn", "Uranus" }, result);
    }
    {
        const result = bf("Earth", "Mercury");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Venus" }, result);
    }
    {
        const result = bf("Mercury", "Uranus");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Venus", "Earth", "Mars", "Jupiter", "Saturn" }, result);
    }
    {
        const result = bf("Neptune", "Venus");
        try std.testing.expectEqualDeep(&[_][]const u8{ "Earth", "Mars", "Jupiter", "Saturn", "Uranus" }, result);
    }
    {
        const result = bf("Earth", "Earth");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = bf("Mars", "Earth");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
    {
        const result = bf("Jupiter", "Makemake");
        try std.testing.expectEqualDeep(&[_][]const u8{}, result);
    }
}
```
