## task_id

```
Swift/108
```

## prompt

```swift
import Foundation

/// Write a function countNums which takes an array of integers and returns
/// the number of elements which has a sum of digits > 0.
/// If a number is negative, then its first signed digit will be negative:
/// e.g. -123 has signed digits -1, 2, and 3.
/// >>> countNums([]) == 0
/// >>> countNums([-1, 11, -11]) == 1
/// >>> countNums([1, 1, 2]) == 3
func countNums(_ arr: [Int]) -> Int {
```

## declaration

```swift
func countNums(_ arr: [Int]) -> Int {
```

## example_test

```swift
precondition(countNums([]) == 0)
precondition(countNums([-1, 11, -11]) == 1)
precondition(countNums([1, 1, 2]) == 3)
```
