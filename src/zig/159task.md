## task_id

```
Zig/159
```

## prompt

```zig
const std = @import("std");

// You're a hungry rabbit, and you already have Eaten a certain number of carrots,
// but now you need to Eat more carrots to complete the day's meals.
// you should return an array of [ total number of Eaten carrots after your meals,
// the number of carrots left after your meals ]
// if there are not enough remaining carrots, you will Eat all remaining carrots, but will still be hungry.
//
// Example:
// * eat(5, 6, 10) -> [11, 4]
// * eat(4, 8, 9) -> [12, 1]
// * eat(1, 10, 10) -> [11, 0]
// * eat(2, 11, 5) -> [7, 0]
//
// Variables:
// @number : integer
// the number of carrots that you have Eaten.
// @need : integer
// the number of carrots that you need to Eat.
// @remaining : integer
// the number of remaining carrots thet exist in stock
//
// Constrain:
// * 0 <= number <= 1000
// * 0 <= need <= 1000
// * 0 <= remaining <= 1000
//
// Have fun :)
pub fn eat(number: i64, need: i64, remaining: i64) [2]i64 {
```

## declaration

```zig
pub fn eat(number: i64, need: i64, remaining: i64) [2]i64 {
```

## example_test

```zig
test "eat examples" {
    try std.testing.expectEqual([2]i64{ 11, 4 }, eat(5, 6, 10));
    try std.testing.expectEqual([2]i64{ 12, 1 }, eat(4, 8, 9));
    try std.testing.expectEqual([2]i64{ 11, 0 }, eat(1, 10, 10));
    try std.testing.expectEqual([2]i64{ 7, 0 }, eat(2, 11, 5));
}
```
