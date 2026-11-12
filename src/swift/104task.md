## task_id

```
Swift/104
```

## prompt

```swift
import Foundation

/// Given a list of positive integers x. return a sorted list of all
/// elements that hasn't any even digit.
///
/// Note: Returned list should be sorted in increasing order.
///
/// For example:
/// >>> uniqueDigits([15, 33, 1422, 1])
/// [1, 15, 33]
/// >>> uniqueDigits([152, 323, 1422, 10])
/// []
func uniqueDigits(_ x: [Int]) -> [Int] {
```

## declaration

```swift
func uniqueDigits(_ x: [Int]) -> [Int] {
```

## example_test

```swift
precondition(uniqueDigits([15, 33, 1422, 1]) == [1, 15, 33])
precondition(uniqueDigits([152, 323, 1422, 10]) == [])
```
