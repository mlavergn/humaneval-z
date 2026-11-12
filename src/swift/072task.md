## task_id

```
Swift/72
```

## prompt

```swift
import Foundation

/// Write a function that returns true if the object q will fly, and false otherwise.
/// The object q will fly if it's balanced (it is a palindromic list) and the sum of its elements is less than or equal the maximum possible weight w.
///
/// Example:
/// willItFly([1, 2], w: 5) ➞ false
/// 1+2 is less than the maximum possible weight, but it's unbalanced.
///
/// willItFly([3, 2, 3], w: 1) ➞ false
/// it's balanced, but 3+2+3 is more than the maximum possible weight.
///
/// willItFly([3, 2, 3], w: 9) ➞ true
/// 3+2+3 is less than the maximum possible weight, and it's balanced.
///
/// willItFly([3], w: 5) ➞ true
/// 3 is less than the maximum possible weight, and it's balanced.
func willItFly(_ q: [Int], w: Int) -> Bool {
```

## declaration

```swift
func willItFly(_ q: [Int], w: Int) -> Bool {
```

## example_test

```swift
precondition(willItFly([3, 2, 3], w: 9))
precondition(!willItFly([1, 2], w: 5))
precondition(willItFly([3], w: 5))
precondition(!willItFly([3, 2, 3], w: 1))
```
