func MaxFill(grid [][]int, capacity int) int {
    result := 0
    for _, arr := range grid {
        sum := 0
        for _, i := range arr {
            sum += i
        }
        result += int(math.Ceil(float64(sum) / float64(capacity)))
    }
    return result
}
