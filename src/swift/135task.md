## task_id

```
Swift/135
```

## prompt

```swift
import Foundation

/// Create a function which returns the largest index of an element which
/// is not greater than or equal to the element immediately preceding it. If
/// no such element exists then return -1. The given array will not contain
/// duplicate values.
///
/// Examples:
/// canArrange([1,2,4,3,5]) = 3
/// canArrange([1,2,3]) = -1
func canArrange(_ arr: [Int]) -> Int {
```

## declaration

```swift
func canArrange(_ arr: [Int]) -> Int {
```

## example_test

```swift
precondition(canArrange([1, 2, 4, 3, 5]) == 3)
precondition(canArrange([1, 2, 3]) == -1)
```
