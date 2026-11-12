func StartsOneEnds(n int) int {
    if n == 1 {
        return 1
    }
    return 18 * int(math.Pow(10, float64(n-2)))
}
