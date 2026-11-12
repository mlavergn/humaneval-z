## task_id

```
Swift/0
```

## prompt

```swift
import Foundation

/// Check if in given list of numbers, are any two numbers closer to each other than given threshold.
/// >>> hasCloseElements([1.0, 2.0, 3.0], threshold: 0.5)
/// false
/// >>> hasCloseElements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], threshold: 0.3)
/// true
func hasCloseElements(_ numbers: [Double], threshold: Double) -> Bool {
```

## declaration

```swift
func hasCloseElements(_ numbers: [Double], threshold: Double) -> Bool {
```

## example_test

```swift
precondition(!hasCloseElements([1.0, 2.0, 3.0], threshold: 0.5))
precondition(hasCloseElements([1.0, 2.8, 3.0, 4.0, 5.0, 2.0], threshold: 0.3))
```
