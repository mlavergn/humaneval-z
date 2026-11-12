## task_id

```
Swift/22
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

/// Filter given list of any values only for integers
/// >>> filterIntegers(["a", 3.14, 5])
/// [5]
/// >>> filterIntegers([1, 2, 3, "abc", [], []])
/// [1, 2, 3]
func filterIntegers(_ values: [Value]) -> [Int] {
```

## declaration

```swift
func filterIntegers(_ values: [Value]) -> [Int] {
```

## example_test

```swift
precondition(filterIntegers([.string("a"), .double(3.14), .int(5)]) == [5])
precondition(filterIntegers([.int(1), .int(2), .int(3), .string("abc"), .none, .list([])]) == [1, 2, 3])
```
