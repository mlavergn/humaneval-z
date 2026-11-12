## task_id

```
Swift/150
```

## prompt

```swift
import Foundation

/// A simple program which should return the value of x if n is
/// a prime number and should return the value of y otherwise.
///
/// Examples:
/// for xOrY(7, x: 34, y: 12) == 34
/// for xOrY(15, x: 8, y: 5) == 5
func xOrY(_ n: Int, x: Int, y: Int) -> Int {
```

## declaration

```swift
func xOrY(_ n: Int, x: Int, y: Int) -> Int {
```

## example_test

```swift
precondition(xOrY(7, x: 34, y: 12) == 34)
precondition(xOrY(15, x: 8, y: 5) == 5)
```
