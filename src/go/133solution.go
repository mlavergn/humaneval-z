func SumSquares(lst []float64) int {
    squared := 0
    for _, i := range lst {
        squared += int(math.Pow(math.Ceil(i), 2))
    }
    return squared
}
