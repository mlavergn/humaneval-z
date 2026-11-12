## task_id

```
Swift/42
```

## prompt

```swift
import Foundation

/// Return list with elements incremented by 1.
/// >>> incrList([1, 2, 3])
/// [2, 3, 4]
/// >>> incrList([5, 3, 5, 2, 3, 3, 9, 0, 123])
/// [6, 4, 6, 3, 4, 4, 10, 1, 124]
func incrList(_ l: [Int]) -> [Int] {
```

## declaration

```swift
func incrList(_ l: [Int]) -> [Int] {
```

## example_test

```swift
precondition(incrList([1, 2, 3]) == [2, 3, 4])
precondition(incrList([5, 2, 5, 2, 3, 3, 9, 0, 123]) == [6, 3, 6, 3, 4, 4, 10, 1, 124])
```
