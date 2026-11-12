## task_id

```
Swift/163
```

## prompt

```swift
import Foundation

/// Given two positive integers a and b, return the even digits between a
/// and b, in ascending order.
///
/// For example:
/// generateIntegers(2, 8) => [2, 4, 6, 8]
/// generateIntegers(8, 2) => [2, 4, 6, 8]
/// generateIntegers(10, 14) => []
func generateIntegers(_ a: Int, _ b: Int) -> [Int] {
```

## declaration

```swift
func generateIntegers(_ a: Int, _ b: Int) -> [Int] {
```

## example_test

```swift
precondition(generateIntegers(2, 8) == [2, 4, 6, 8])
precondition(generateIntegers(8, 2) == [2, 4, 6, 8])
precondition(generateIntegers(10, 14) == [])
```
