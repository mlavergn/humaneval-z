## task_id

```
Swift/2
```

## prompt

```swift
import Foundation

/// Given a positive floating point number, it can be decomposed into
/// and integer part (largest integer smaller than given number) and decimals
/// (leftover part always smaller than 1).
///
/// Return the decimal part of the number.
/// >>> truncateNumber(3.5)
/// 0.5
func truncateNumber(_ number: Double) -> Double {
```

## declaration

```swift
func truncateNumber(_ number: Double) -> Double {
```

## example_test

```swift
precondition(truncateNumber(3.5) == 0.5)
```
