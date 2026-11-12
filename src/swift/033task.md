## task_id

```
Swift/33
```

## prompt

```swift
import Foundation

/// This function takes a list l and returns a list l' such that
/// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
/// to the values of the corresponding indicies of l, but sorted.
/// >>> sortThird([1, 2, 3])
/// [1, 2, 3]
/// >>> sortThird([5, 6, 3, 4, 8, 9, 2])
/// [2, 6, 3, 4, 8, 9, 5]
func sortThird(_ l: [Int]) -> [Int] {
```

## declaration

```swift
func sortThird(_ l: [Int]) -> [Int] {
```

## example_test

```swift
precondition(sortThird([1, 2, 3]) == [1, 2, 3])
precondition(sortThird([5, 6, 3, 4, 8, 9, 2]) == [2, 6, 3, 4, 8, 9, 5])
```
