## task_id

```
Swift/52
```

## prompt

```swift
import Foundation

/// Return true if all numbers in the list l are below threshold t.
/// >>> belowThreshold([1, 2, 4, 10], t: 100)
/// true
/// >>> belowThreshold([1, 20, 4, 10], t: 5)
/// false
func belowThreshold(_ l: [Int], t: Int) -> Bool {
```

## declaration

```swift
func belowThreshold(_ l: [Int], t: Int) -> Bool {
```

## example_test

```swift
precondition(belowThreshold([1, 2, 4, 10], t: 100))
precondition(!belowThreshold([1, 20, 4, 10], t: 5))
```
