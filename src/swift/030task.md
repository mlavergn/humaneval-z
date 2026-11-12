## task_id

```
Swift/30
```

## prompt

```swift
import Foundation

/// Return only positive numbers in the list.
/// >>> getPositive([-1, 2, -4, 5, 6])
/// [2, 5, 6]
/// >>> getPositive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
/// [5, 3, 2, 3, 9, 123, 1]
func getPositive(_ l: [Int]) -> [Int] {
```

## declaration

```swift
func getPositive(_ l: [Int]) -> [Int] {
```

## example_test

```swift
precondition(getPositive([-1, 2, -4, 5, 6]) == [2, 5, 6])
precondition(getPositive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 9, 123, 1])
```
