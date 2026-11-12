func getRow(_ lst: [[Int]], x: Int) -> [(row: Int, column: Int)] {
    var coords: [(row: Int, column: Int)] = []
    for (i, row) in lst.enumerated() {
        // Columns in descending order within each row.
        for j in row.indices.reversed() where row[j] == x {
            coords.append((i, j))
        }
    }
    return coords
}
