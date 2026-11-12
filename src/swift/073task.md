## task_id

```
Swift/73
```

## prompt

```swift
import Foundation

/// Given an array arr of integers, find the minimum number of elements that
/// need to be changed to make the array palindromic. A palindromic array is an array that
/// is read the same backwards and forwards. In one change, you can change one element to any other element.
///
/// For example:
/// smallestChange([1,2,3,5,4,7,9,6]) == 4
/// smallestChange([1, 2, 3, 4, 3, 2, 2]) == 1
/// smallestChange([1, 2, 3, 2, 1]) == 0
func smallestChange(_ arr: [Int]) -> Int {
```

## declaration

```swift
func smallestChange(_ arr: [Int]) -> Int {
```

## example_test

```swift
precondition(smallestChange([1, 2, 3, 5, 4, 7, 9, 6]) == 4)
precondition(smallestChange([1, 2, 3, 4, 3, 2, 2]) == 1)
precondition(smallestChange([1, 2, 3, 2, 1]) == 0)
precondition(smallestChange([3, 1, 1, 3]) == 0)
```
