## task_id

```
Swift/136
```

## prompt

```swift
import Foundation

/// Create a function that returns a tuple (a, b), where 'a' is
/// the largest of negative integers, and 'b' is the smallest
/// of positive integers in a list.
/// If there is no negative or positive integers, return them as nil.
///
/// Examples:
/// largestSmallestIntegers([2, 4, 1, 3, 5, 7]) == (nil, 1)
/// largestSmallestIntegers([]) == (nil, nil)
/// largestSmallestIntegers([0]) == (nil, nil)
/// Returns (largest negative integer, smallest positive integer), nil where there is none.
func largestSmallestIntegers(_ lst: [Int]) -> (Int?, Int?) {
```

## declaration

```swift
func largestSmallestIntegers(_ lst: [Int]) -> (Int?, Int?) {
```

## example_test

```swift
precondition(largestSmallestIntegers([2, 4, 1, 3, 5, 7]) == (nil, 1))
precondition(largestSmallestIntegers([]) == (nil, nil))
precondition(largestSmallestIntegers([0]) == (nil, nil))
```
