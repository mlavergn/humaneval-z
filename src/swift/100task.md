## task_id

```
Swift/100
```

## prompt

```swift
import Foundation

/// Given a positive integer n, you have to make a pile of n levels of stones.
/// The first level has n stones.
/// The number of stones in the next level is:
/// - the next odd number if n is odd.
/// - the next even number if n is even.
/// Return the number of stones in each level in a list, where element at index
/// i represents the number of stones in the level (i+1).
///
/// Examples:
/// >>> makeAPile(3)
/// [3, 5, 7]
func makeAPile(_ n: Int) -> [Int] {
```

## declaration

```swift
func makeAPile(_ n: Int) -> [Int] {
```

## example_test

```swift
precondition(makeAPile(3) == [3, 5, 7])
```
