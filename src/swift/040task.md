## task_id

```
Swift/40
```

## prompt

```swift
import Foundation

/// triplesSumToZero takes a list of integers as an input.
/// it returns true if there are three distinct elements in the list that
/// sum to zero, and false otherwise.
///
/// >>> triplesSumToZero([1, 3, 5, 0])
/// false
/// >>> triplesSumToZero([1, 3, -2, 1])
/// true
/// >>> triplesSumToZero([1, 2, 3, 7])
/// false
/// >>> triplesSumToZero([2, 4, -5, 3, 9, 7])
/// true
/// >>> triplesSumToZero([1])
/// false
func triplesSumToZero(_ l: [Int]) -> Bool {
```

## declaration

```swift
func triplesSumToZero(_ l: [Int]) -> Bool {
```

## example_test

```swift
precondition(!triplesSumToZero([1, 3, 5, 0]))
precondition(triplesSumToZero([1, 3, -2, 1]))
precondition(!triplesSumToZero([1, 2, 3, 7]))
precondition(triplesSumToZero([2, 4, -5, 3, 9, 7]))
```
