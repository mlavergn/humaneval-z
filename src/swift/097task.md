## task_id

```
Swift/97
```

## prompt

```swift
import Foundation

/// Complete the function that takes two integers and returns
/// the product of their unit digits.
/// Assume the input is always valid.
/// Examples:
/// multiply(148, 412) should return 16.
/// multiply(19, 28) should return 72.
/// multiply(2020, 1851) should return 0.
/// multiply(14, -15) should return 20.
func multiply(_ a: Int, _ b: Int) -> Int {
```

## declaration

```swift
func multiply(_ a: Int, _ b: Int) -> Int {
```

## example_test

```swift
precondition(multiply(148, 412) == 16)
precondition(multiply(19, 28) == 72)
precondition(multiply(2020, 1851) == 0)
precondition(multiply(14, -15) == 20)
```
