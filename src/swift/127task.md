## task_id

```
Swift/127
```

## prompt

```swift
import Foundation

/// You are given two intervals,
/// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
/// The given intervals are closed which means that the interval (start, end)
/// includes both start and end.
/// For each given interval, it is assumed that its start is less or equal its end.
/// Your task is to determine whether the length of Intersection of these two
/// intervals is a prime number.
/// Example, the Intersection of the intervals (1, 3), (2, 4) is (2, 3)
/// which its length is 1, which not a prime number.
/// If the length of the Intersection is a prime number, return "YES",
/// otherwise, return "NO".
/// If the two intervals don't intersect, return "NO".
///
///
/// [input/output] samples:
/// intersection((1, 2), (2, 3)) ==> "NO"
/// intersection((-1, 1), (0, 4)) ==> "NO"
/// intersection((-3, -1), (-5, 5)) ==> "YES"
func intersection(_ interval1: (Int, Int), _ interval2: (Int, Int)) -> String {
```

## declaration

```swift
func intersection(_ interval1: (Int, Int), _ interval2: (Int, Int)) -> String {
```

## example_test

```swift
precondition(intersection((1, 2), (2, 3)) == "NO")
precondition(intersection((-1, 1), (0, 4)) == "NO")
precondition(intersection((-3, -1), (-5, 5)) == "YES")
```
