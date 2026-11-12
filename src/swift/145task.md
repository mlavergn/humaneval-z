## task_id

```
Swift/145
```

## prompt

```swift
import Foundation

/// Write a function which sorts the given list of integers
/// in ascending order according to the sum of their digits.
/// Note: if there are several items with similar sum of their digits,
/// order them based on their index in original list.
///
/// For example:
/// >>> orderByPoints([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
/// >>> orderByPoints([]) == []
func orderByPoints(_ nums: [Int]) -> [Int] {
```

## declaration

```swift
func orderByPoints(_ nums: [Int]) -> [Int] {
```

## example_test

```swift
precondition(orderByPoints([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
precondition(orderByPoints([]) == [])
```
