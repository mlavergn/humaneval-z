## task_id

```
Swift/65
```

## prompt

```swift
import Foundation

/// Circular shift the digits of the integer x, shift the digits right by shift
/// and return the result as a string.
/// If shift > number of digits, return digits reversed.
/// >>> circularShift(12, shift: 1)
/// "21"
/// >>> circularShift(12, shift: 2)
/// "12"
func circularShift(_ x: Int, shift: Int) -> String {
```

## declaration

```swift
func circularShift(_ x: Int, shift: Int) -> String {
```

## example_test

```swift
precondition(circularShift(12, shift: 2) == "12")
precondition(circularShift(12, shift: 1) == "21")
```
