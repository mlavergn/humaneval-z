func Multiply(a, b int) int {
    return int(math.Abs(float64(a%10)) * math.Abs(float64(b%10)))
}
