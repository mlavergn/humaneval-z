## task_id

```
Swift/57
```

## prompt

```swift
import Foundation

/// Return true is list elements are Monotonically increasing or decreasing.
/// >>> monotonic([1, 2, 4, 20])
/// true
/// >>> monotonic([1, 20, 4, 10])
/// false
/// >>> monotonic([4, 1, 0, -10])
/// true
func monotonic(_ l: [Int]) -> Bool {
```

## declaration

```swift
func monotonic(_ l: [Int]) -> Bool {
```

## example_test

```swift
precondition(monotonic([1, 2, 4, 10]))
precondition(!monotonic([1, 20, 4, 10]))
precondition(monotonic([4, 1, 0, -10]))
```
