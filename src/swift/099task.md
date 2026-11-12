## task_id

```
Swift/99
```

## prompt

```swift
import Foundation

/// Create a function that takes a value (string) representing a number
/// and returns the closest integer to it. If the number is equidistant
/// from two integers, round it away from zero.
///
/// Examples
/// >>> closestInteger("10")
/// 10
/// >>> closestInteger("15.3")
/// 15
///
/// Note:
/// Rounding away from zero means that if the given number is equidistant
/// from two integers, the one you should return is the one that is the
/// farthest from zero. For example closestInteger("14.5") should
/// return 15 and closestInteger("-14.5") should return -15.
func closestInteger(_ value: String) -> Int {
```

## declaration

```swift
func closestInteger(_ value: String) -> Int {
```

## example_test

```swift
precondition(closestInteger("10") == 10)
precondition(closestInteger("15.3") == 15)
```
