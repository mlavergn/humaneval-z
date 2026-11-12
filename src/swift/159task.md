## task_id

```
Swift/159
```

## prompt

```swift
import Foundation

/// You're a hungry rabbit, and you already have Eaten a certain number of carrots,
/// but now you need to Eat more carrots to complete the day's meals.
/// you should return an array of [ total number of Eaten carrots after your meals,
/// the number of carrots left after your meals ]
/// if there are not enough remaining carrots, you will Eat all remaining carrots, but will still be hungry.
///
/// Example:
/// * eat(number: 5, need: 6, remaining: 10) -> [11, 4]
/// * eat(number: 4, need: 8, remaining: 9) -> [12, 1]
/// * eat(number: 1, need: 10, remaining: 10) -> [11, 0]
/// * eat(number: 2, need: 11, remaining: 5) -> [7, 0]
///
/// Variables:
/// @number : integer
/// the number of carrots that you have Eaten.
/// @need : integer
/// the number of carrots that you need to Eat.
/// @remaining : integer
/// the number of remaining carrots thet exist in stock
///
/// Constrain:
/// * 0 <= number <= 1000
/// * 0 <= need <= 1000
/// * 0 <= remaining <= 1000
///
/// Have fun :)
func eat(number: Int, need: Int, remaining: Int) -> (Int, Int) {
```

## declaration

```swift
func eat(number: Int, need: Int, remaining: Int) -> (Int, Int) {
```

## example_test

```swift
precondition(eat(number: 5, need: 6, remaining: 10) == (11, 4))
precondition(eat(number: 4, need: 8, remaining: 9) == (12, 1))
precondition(eat(number: 1, need: 10, remaining: 10) == (11, 0))
precondition(eat(number: 2, need: 11, remaining: 5) == (7, 0))
```
