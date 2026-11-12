## task_id

```
Swift/103
```

## prompt

```swift
import Foundation

/// You are given two positive integers n and m, and your task is to compute the
/// average of the integers from n through m (including n and m).
/// Round the answer to the nearest integer and convert that to binary.
/// If n is greater than m, return -1.
/// Example:
/// roundedAvg(1, 5) => "0b11"
/// roundedAvg(7, 5) => -1
/// roundedAvg(10, 20) => "0b1111"
/// roundedAvg(20, 33) => "0b11010"
/// Returns nil if n is greater than m.
func roundedAvg(_ n: Int, _ m: Int) -> String? {
```

## declaration

```swift
func roundedAvg(_ n: Int, _ m: Int) -> String? {
```

## example_test

```swift
precondition(roundedAvg(1, 5) == "0b11")
precondition(roundedAvg(7, 5) == nil)
precondition(roundedAvg(10, 20) == "0b1111")
precondition(roundedAvg(20, 33) == "0b11011")
```
