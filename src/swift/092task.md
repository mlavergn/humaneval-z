## task_id

```
Swift/92
```

## prompt

```swift
import Foundation

/// A dynamically typed value.
enum Value: Equatable {
    case none
    case int(Int)
    case double(Double)
    case bool(Bool)
    case string(String)
    case list([Value])
    case dict([String: Value])
}

/// Create a function that takes 3 numbers.
/// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
/// Returns false in any other cases.
///
/// Examples
/// anyInt(5, 2, 7) ➞ true
///
/// anyInt(3, 2, 2) ➞ false
///
/// anyInt(3, -2, 1) ➞ true
///
/// anyInt(3.6, -2.2, 2) ➞ false
func anyInt(_ x: Value, _ y: Value, _ z: Value) -> Bool {
```

## declaration

```swift
func anyInt(_ x: Value, _ y: Value, _ z: Value) -> Bool {
```

## example_test

```swift
precondition(anyInt(.int(5), .int(2), .int(7)))
precondition(!anyInt(.int(3), .int(2), .int(2)))
precondition(anyInt(.int(3), .int(-2), .int(1)))
precondition(!anyInt(.double(3.6), .double(-2.2), .int(2)))
```
