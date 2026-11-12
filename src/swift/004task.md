## task_id

```
Swift/4
```

## prompt

```swift
import Foundation

/// For a given list of input numbers, calculate Mean Absolute Deviation
/// around the mean of this dataset.
/// Mean Absolute Deviation is the average absolute difference between each
/// element and a centerpoint (mean in this case):
/// MAD = average | x - x_mean |
/// >>> meanAbsoluteDeviation([1.0, 2.0, 3.0, 4.0])
/// 1.0
func meanAbsoluteDeviation(_ numbers: [Double]) -> Double {
```

## declaration

```swift
func meanAbsoluteDeviation(_ numbers: [Double]) -> Double {
```

## example_test

```swift
precondition(abs(meanAbsoluteDeviation([1.0, 2.0, 3.0, 4.0]) - 1.0) < 1e-6)
```
