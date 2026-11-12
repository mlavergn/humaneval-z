## task_id

```
Swift/128
```

## prompt

```swift
import Foundation

/// You are given an array arr of integers and you need to return
/// sum of magnitudes of integers multiplied by product of all signs
/// of each number in the array, represented by 1, -1 or 0.
/// Note: return nil for empty arr.
///
/// Example:
/// >>> prodSigns([1, 2, 2, -4]) == -9
/// >>> prodSigns([0, 1]) == 0
/// >>> prodSigns([]) == nil
func prodSigns(_ arr: [Int]) -> Int? {
```

## declaration

```swift
func prodSigns(_ arr: [Int]) -> Int? {
```

## example_test

```swift
precondition(prodSigns([1, 2, 2, -4]) == -9)
precondition(prodSigns([0, 1]) == 0)
precondition(prodSigns([]) == nil)
```
