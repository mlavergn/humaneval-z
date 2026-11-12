## task_id

```
Swift/90
```

## prompt

```swift
import Foundation

/// You are given a list of integers.
/// Write a function nextSmallest() that returns the 2nd smallest element of the list.
/// Return nil if there is no such element.
///
/// nextSmallest([1, 2, 3, 4, 5]) == 2
/// nextSmallest([5, 1, 4, 3, 2]) == 2
/// nextSmallest([]) == nil
/// nextSmallest([1, 1]) == nil
func nextSmallest(_ lst: [Int]) -> Int? {
```

## declaration

```swift
func nextSmallest(_ lst: [Int]) -> Int? {
```

## example_test

```swift
precondition(nextSmallest([1, 2, 3, 4, 5]) == 2)
precondition(nextSmallest([5, 1, 4, 3, 2]) == 2)
precondition(nextSmallest([]) == nil)
precondition(nextSmallest([1, 1]) == nil)
```
