## task_id

```
Swift/115
```

## prompt

```swift
import Foundation

/// You are given a rectangular grid of wells. Each row represents a single well,
/// and each 1 in a row represents a single unit of water.
/// Each well has a corresponding bucket that can be used to extract water from it,
/// and all buckets have the same capacity.
/// Your task is to use the buckets to empty the wells.
/// Output the number of times you need to lower the buckets.
///
/// Example 1:
/// Input:
/// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
/// bucket_capacity : 1
/// Output: 6
///
/// Example 2:
/// Input:
/// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
/// bucket_capacity : 2
/// Output: 5
///
/// Example 3:
/// Input:
/// grid : [[0,0,0], [0,0,0]]
/// bucket_capacity : 5
/// Output: 0
///
/// Constraints:
/// * all wells have the same length
/// * 1 <= grid.length <= 10^2
/// * 1 <= grid[:,1].length <= 10^2
/// * grid[i][j] -> 0 | 1
/// * 1 <= capacity <= 10
func maxFill(_ grid: [[Int]], capacity: Int) -> Int {
```

## declaration

```swift
func maxFill(_ grid: [[Int]], capacity: Int) -> Int {
```

## example_test

```swift
precondition(maxFill([[0, 0, 1, 0], [0, 1, 0, 0], [1, 1, 1, 1]], capacity: 1) == 6)
precondition(maxFill([[0, 0, 1, 1], [0, 0, 0, 0], [1, 1, 1, 1], [0, 1, 1, 1]], capacity: 2) == 5)
precondition(maxFill([[0, 0, 0], [0, 0, 0]], capacity: 5) == 0)
```
