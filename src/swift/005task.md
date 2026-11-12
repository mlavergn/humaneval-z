## task_id

```
Swift/5
```

## prompt

```swift
import Foundation

/// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
/// >>> intersperse([], delimeter: 4)
/// []
/// >>> intersperse([1, 2, 3], delimeter: 4)
/// [1, 4, 2, 4, 3]
func intersperse(_ numbers: [Int], delimeter: Int) -> [Int] {
```

## declaration

```swift
func intersperse(_ numbers: [Int], delimeter: Int) -> [Int] {
```

## example_test

```swift
precondition(intersperse([], delimeter: 4) == [])
precondition(intersperse([1, 2, 3], delimeter: 4) == [1, 4, 2, 4, 3])
```
