## task_id

```
Swift/8
```

## prompt

```swift
import Foundation

/// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
/// Empty sum should be equal to 0 and empty product should be equal to 1.
/// >>> sumProduct([])
/// (0, 1)
/// >>> sumProduct([1, 2, 3, 4])
/// (10, 24)
func sumProduct(_ numbers: [Int]) -> (Int, Int) {
```

## declaration

```swift
func sumProduct(_ numbers: [Int]) -> (Int, Int) {
```

## example_test

```swift
precondition(sumProduct([]) == (0, 1))
precondition(sumProduct([1, 2, 3, 4]) == (10, 24))
```
