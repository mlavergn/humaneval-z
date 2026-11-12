func maxFill(_ grid: [[Int]], capacity: Int) -> Int {
    return grid.map { row in (row.reduce(0, +) + capacity - 1) / capacity }.reduce(0, +)
}
