func DoubleTheDifference(lst []float64) int {
    sum := 0
    for _, i := range lst {
        if i > 0 && math.Mod(i, 2) != 0 && i == float64(int(i)) {
            sum += int(math.Pow(i, 2))
        }
    }
    return sum
}
