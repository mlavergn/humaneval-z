## task_id

```
Swift/116
```

## prompt

```swift
import Foundation

/// In this Kata, you have to sort an array of non-negative integers according to
/// number of ones in their binary representation in ascending order.
/// For similar number of ones, sort based on decimal value.
///
/// It must be implemented like this:
/// >>> sortArray([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
/// >>> sortArray([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
/// >>> sortArray([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
func sortArray(_ arr: [Int]) -> [Int] {
```

## declaration

```swift
func sortArray(_ arr: [Int]) -> [Int] {
```

## example_test

```swift
precondition(sortArray([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5])
precondition(sortArray([-2, -3, -4, -5, -6]) == [-4, -2, -6, -5, -3])
precondition(sortArray([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3])
```
