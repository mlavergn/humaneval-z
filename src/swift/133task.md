## task_id

```
Swift/133
```

## prompt

```swift
import Foundation

/// You are given a list of numbers.
/// You need to return the sum of squared numbers in the given list,
/// round each element in the list to the upper int(Ceiling) first.
/// Examples:
/// For lst = [1,2,3] the output should be 14
/// For lst = [1,4,9] the output should be 98
/// For lst = [1,3,5,7] the output should be 84
/// For lst = [1.4,4.2,0] the output should be 29
/// For lst = [-2.4,1,1] the output should be 6
func sumSquares(_ lst: [Double]) -> Int {
```

## declaration

```swift
func sumSquares(_ lst: [Double]) -> Int {
```

## example_test

```swift
precondition(sumSquares([1.0, 2.0, 3.0]) == 14)
precondition(sumSquares([1.0, 4.0, 9.0]) == 98)
precondition(sumSquares([1.0, 3.0, 5.0, 7.0]) == 84)
precondition(sumSquares([1.4, 4.2, 0.0]) == 29)
precondition(sumSquares([-2.4, 1.0, 1.0]) == 6)
```
