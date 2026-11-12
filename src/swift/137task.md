## task_id

```
Swift/137
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

/// Create a function that takes integers, floats, or strings representing
/// real numbers, and returns the larger variable in its given variable type.
/// Return nil if the values are equal.
/// Note: If a real number is represented as a string, the floating point might be . or ,
///
/// compareOne(1, 2.5) ➞ 2.5
/// compareOne(1, "2,3") ➞ "2,3"
/// compareOne("5,1", "6") ➞ "6"
/// compareOne("1", 1) ➞ nil
/// Returns the larger of a and b in its original type, or nil if they are equal.
func compareOne(_ a: Value, _ b: Value) -> Value? {
```

## declaration

```swift
func compareOne(_ a: Value, _ b: Value) -> Value? {
```

## example_test

```swift
precondition(compareOne(.int(1), .double(2.5)) == .double(2.5))
precondition(compareOne(.int(1), .string("2,3")) == .string("2,3"))
precondition(compareOne(.string("5,1"), .string("6")) == .string("6"))
precondition(compareOne(.string("1"), .int(1)) == nil)
```
