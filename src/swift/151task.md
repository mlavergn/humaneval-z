## task_id

```
Swift/151
```

## prompt

```swift
import Foundation

/// Given a list of numbers, return the sum of squares of the numbers
/// in the list that are odd. Ignore numbers that are negative or not integers.
///
/// doubleTheDifference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
/// doubleTheDifference([-1, -2, 0]) == 0
/// doubleTheDifference([9, -2]) == 81
/// doubleTheDifference([0]) == 0
///
/// If the input list is empty, return 0.
func doubleTheDifference(_ lst: [Double]) -> Int {
```

## declaration

```swift
func doubleTheDifference(_ lst: [Double]) -> Int {
```

## example_test

```swift
precondition(doubleTheDifference([1.0, 3.0, 2.0, 0.0]) == 10)
precondition(doubleTheDifference([-1.0, -2.0, 0.0]) == 0)
precondition(doubleTheDifference([9.0, -2.0]) == 81)
precondition(doubleTheDifference([0.0]) == 0)
```
