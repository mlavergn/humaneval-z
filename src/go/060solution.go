func SumToN(n int) int {
    if n <= 0 {
		return 0
	} else {
		return n + SumToN(n - 1)
	}
}
