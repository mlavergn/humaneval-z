func minpath(_ grid: [[Int]], k: Int) -> [Int] {
    let n = grid.count
    var val = n * n + 1
    for i in 0..<n {
        for j in 0..<n where grid[i][j] == 1 {
            if i != 0 { val = min(val, grid[i - 1][j]) }
            if j != 0 { val = min(val, grid[i][j - 1]) }
            if i != n - 1 { val = min(val, grid[i + 1][j]) }
            if j != n - 1 { val = min(val, grid[i][j + 1]) }
        }
    }
    return (0..<max(k, 0)).map { $0 % 2 == 0 ? 1 : val }
}
