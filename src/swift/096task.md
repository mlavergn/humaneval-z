## task_id

```
Swift/96
```

## prompt

```swift
import Foundation

/// Implement a function that takes an non-negative integer and returns an array of the first n
/// integers that are prime numbers and less than n.
/// for example:
/// countUpTo(5) => [2,3]
/// countUpTo(11) => [2,3,5,7]
/// countUpTo(0) => []
/// countUpTo(20) => [2,3,5,7,11,13,17,19]
/// countUpTo(1) => []
/// countUpTo(18) => [2,3,5,7,11,13,17]
func countUpTo(_ n: Int) -> [Int] {
```

## declaration

```swift
func countUpTo(_ n: Int) -> [Int] {
```

## example_test

```swift
precondition(countUpTo(5) == [2, 3])
precondition(countUpTo(11) == [2, 3, 5, 7])
precondition(countUpTo(0) == [])
precondition(countUpTo(20) == [2, 3, 5, 7, 11, 13, 17, 19])
precondition(countUpTo(1) == [])
precondition(countUpTo(18) == [2, 3, 5, 7, 11, 13, 17])
```
