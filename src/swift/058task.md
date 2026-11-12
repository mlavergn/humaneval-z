## task_id

```
Swift/58
```

## prompt

```swift
import Foundation

/// Return sorted unique Common elements for two lists.
/// >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
/// [1, 5, 653]
/// >>> common([5, 3, 2, 8], [3, 2])
/// [2, 3]
func common(_ l1: [Int], _ l2: [Int]) -> [Int] {
```

## declaration

```swift
func common(_ l1: [Int], _ l2: [Int]) -> [Int] {
```

## example_test

```swift
precondition(common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653])
precondition(common([5, 3, 2, 8], [3, 2]) == [2, 3])
```
