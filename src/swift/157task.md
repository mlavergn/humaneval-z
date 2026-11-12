## task_id

```
Swift/157
```

## prompt

```swift
import Foundation

/// Given the lengths of the three sides of a triangle. Return true if the three
/// sides form a right-angled triangle, false otherwise.
/// A right-angled triangle is a triangle in which one angle is right angle or
/// 90 degree.
/// Example:
/// rightAngleTriangle(a: 3, b: 4, c: 5) == true
/// rightAngleTriangle(a: 1, b: 2, c: 3) == false
func rightAngleTriangle(a: Int, b: Int, c: Int) -> Bool {
```

## declaration

```swift
func rightAngleTriangle(a: Int, b: Int, c: Int) -> Bool {
```

## example_test

```swift
precondition(rightAngleTriangle(a: 3, b: 4, c: 5))
precondition(!rightAngleTriangle(a: 1, b: 2, c: 3))
```
