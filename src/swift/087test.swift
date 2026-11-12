precondition(sameCoords(getRow([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], x: 1), [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]))
precondition(sameCoords(getRow([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6]], x: 2), [(0, 1), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1)]))
precondition(sameCoords(getRow([[1, 2, 3, 4, 5, 6], [1, 2, 3, 4, 5, 6], [1, 1, 3, 4, 5, 6], [1, 2, 1, 4, 5, 6], [1, 2, 3, 1, 5, 6], [1, 2, 3, 4, 1, 6], [1, 2, 3, 4, 5, 1]], x: 1), [(0, 0), (1, 0), (2, 1), (2, 0), (3, 2), (3, 0), (4, 3), (4, 0), (5, 4), (5, 0), (6, 5), (6, 0)]))
precondition(sameCoords(getRow([[]], x: 1), []))
precondition(sameCoords(getRow([[1]], x: 2), []))
precondition(sameCoords(getRow([[], [1], [1, 2, 3]], x: 3), [(2, 2)]))

func sameCoords(_ got: [(row: Int, column: Int)], _ want: [(Int, Int)]) -> Bool {
    return got.count == want.count && zip(got, want).allSatisfy { $0.row == $1.0 && $0.column == $1.1 }
}
