## task_id

```
Swift/87
```

## prompt

```swift
import Foundation

/// You are given a 2 dimensional data, as a nested lists,
/// which is similar to matrix, however, unlike matrices,
/// each row may contain a different number of columns.
/// Given lst, and integer x, find integers x in the list,
/// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
/// each tuple is a coordinate - (row, columns), starting with 0.
/// Sort coordinates initially by rows in ascending order.
/// Also, sort coordinates of the row by columns in descending order.
///
/// Examples:
/// getRow([
/// [1,2,3,4,5,6],
/// [1,2,3,4,1,6],
/// [1,2,3,4,5,1]
/// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
/// getRow([], x: 1) == []
/// getRow([[], [1], [1, 2, 3]], x: 3) == [(2, 2)]
/// Returns (row, column) tuples.
func getRow(_ lst: [[Int]], x: Int) -> [(row: Int, column: Int)] {
```

## declaration

```swift
func getRow(_ lst: [[Int]], x: Int) -> [(row: Int, column: Int)] {
```

## example_test

```swift
precondition(sameCoords(getRow([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], x: 1), [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]))
precondition(sameCoords(getRow([[]], x: 1), []))
precondition(sameCoords(getRow([[], [1], [1, 2, 3]], x: 3), [(2, 2)]))

func sameCoords(_ got: [(row: Int, column: Int)], _ want: [(Int, Int)]) -> Bool {
    return got.count == want.count && zip(got, want).allSatisfy { $0.row == $1.0 && $0.column == $1.1 }
}
```
