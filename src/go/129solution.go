func Minpath(grid [][]int, k int) []int {
    n := len(grid)
    val := n * n + 1
    for i:= 0;i < n; i++ {
        for j := 0;j < n;j++ {
            if grid[i][j] == 1 {
                temp := make([]int, 0)
                if i != 0 {
                    temp = append(temp, grid[i - 1][j])
                }

                if j != 0 {
                    temp = append(temp, grid[i][j - 1])
                }

                if i != n - 1 {
                    temp = append(temp, grid[i + 1][j])
                }

                if j != n - 1 {
                    temp = append(temp, grid[i][j + 1])
                }
                for _, x := range temp {
                    if x < val {
                        val = x
                    }
                }
            }
        }
    }

    ans := make([]int, 0, k)
    for i := 0;i < k;i++ {
        if i & 1 == 0 {
            ans = append(ans,  1)
        } else {
            ans = append(ans,  val)
        }
    }
    return ans
}
