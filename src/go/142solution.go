func SumSquares(lst []int) int {
    result := make([]int, 0)
    for i := 0;i < len(lst);i++ {
        switch {
        case i %3 == 0:
            result = append(result, int(math.Pow(float64(lst[i]), 2)))
        case i % 4 == 0 && i%3 != 0:
            result = append(result, int(math.Pow(float64(lst[i]), 3)))
        default:
            result = append(result, lst[i])
        }
    }
    sum := 0
    for _, x := range result {
        sum += x
    }
    return sum
}
