## task_id

```
Swift/43
```

## prompt

```swift
import Foundation

/// pairsSumToZero takes a list of integers as an input.
/// it returns true if there are two distinct elements in the list that
/// sum to zero, and false otherwise.
/// >>> pairsSumToZero([1, 3, 5, 0])
/// false
/// >>> pairsSumToZero([1, 3, -2, 1])
/// false
/// >>> pairsSumToZero([1, 2, 3, 7])
/// false
/// >>> pairsSumToZero([2, 4, -5, 3, 5, 7])
/// true
/// >>> pairsSumToZero([1])
/// false
func pairsSumToZero(_ l: [Int]) -> Bool {
```

## declaration

```swift
func pairsSumToZero(_ l: [Int]) -> Bool {
```

## example_test

```swift
precondition(!pairsSumToZero([1, 3, 5, 0]))
precondition(!pairsSumToZero([1, 3, -2, 1]))
precondition(!pairsSumToZero([1, 2, 3, 7]))
precondition(pairsSumToZero([2, 4, -5, 3, 5, 7]))
```
