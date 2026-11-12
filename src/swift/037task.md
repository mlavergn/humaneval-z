## task_id

```
Swift/37
```

## prompt

```swift
import Foundation

/// This function takes a list l and returns a list l' such that
/// l' is identical to l in the odd indicies, while its values at the even indicies are equal
/// to the values of the even indicies of l, but sorted.
/// >>> sortEven([1, 2, 3])
/// [1, 2, 3]
/// >>> sortEven([5, 6, 3, 4])
/// [3, 6, 5, 4]
func sortEven(_ l: [Int]) -> [Int] {
```

## declaration

```swift
func sortEven(_ l: [Int]) -> [Int] {
```

## example_test

```swift
precondition(sortEven([1, 2, 3]) == [1, 2, 3])
precondition(sortEven([5, 6, 3, 4]) == [3, 6, 5, 4])
```
