## task_id

```
Swift/69
```

## prompt

```swift
import Foundation

/// You are given a non-empty list of positive integers. Return the greatest integer that is greater than
/// zero, and has a frequency greater than or equal to the value of the integer itself.
/// The frequency of an integer is the number of times it appears in the list.
/// If no such a value exist, return -1.
/// Examples:
/// search([4, 1, 2, 2, 3, 1]) == 2
/// search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
/// search([5, 5, 4, 4, 4]) == -1
func search(_ lst: [Int]) -> Int {
```

## declaration

```swift
func search(_ lst: [Int]) -> Int {
```

## example_test

```swift
precondition(search([4, 1, 2, 2, 3, 1]) == 2)
precondition(search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3)
precondition(search([5, 5, 4, 4, 4]) == -1)
```
