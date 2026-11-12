## task_id

```
Swift/71
```

## prompt

```swift
import Foundation

/// Given the lengths of the three sides of a triangle. Return the area of
/// the triangle rounded to 2 decimal points if the three sides form a valid triangle.
/// Otherwise return -1
/// Three sides make a valid triangle when the sum of any two sides is greater
/// than the third side.
/// Example:
/// triangleArea(a: 3, b: 4, c: 5) == 6.00
/// triangleArea(a: 1, b: 2, c: 10) == -1
func triangleArea(a: Double, b: Double, c: Double) -> Double {
```

## declaration

```swift
func triangleArea(a: Double, b: Double, c: Double) -> Double {
```

## example_test

```swift
precondition(triangleArea(a: 3.0, b: 4.0, c: 5.0) == 6.0)
precondition(triangleArea(a: 1.0, b: 2.0, c: 10.0) == -1.0)
```
