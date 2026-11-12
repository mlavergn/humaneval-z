## task_id

```
Swift/70
```

## prompt

```swift
import Foundation

/// Given list of integers, return list in strange order.
/// Strange sorting, is when you start with the minimum value,
/// then maximum of the remaining integers, then minimum and so on.
///
/// Examples:
/// strangeSortList([1, 2, 3, 4]) == [1, 4, 2, 3]
/// strangeSortList([5, 5, 5, 5]) == [5, 5, 5, 5]
/// strangeSortList([]) == []
func strangeSortList(_ lst: [Int]) -> [Int] {
```

## declaration

```swift
func strangeSortList(_ lst: [Int]) -> [Int] {
```

## example_test

```swift
precondition(strangeSortList([1, 2, 3, 4]) == [1, 4, 2, 3])
precondition(strangeSortList([5, 5, 5, 5]) == [5, 5, 5, 5])
precondition(strangeSortList([]) == [])
```
