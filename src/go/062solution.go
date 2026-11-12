func Derivative(xs []int) []int {
    l := len(xs)
	y := make([]int, l - 1)
	for i := 0; i < l - 1; i++ {
		y[i] = xs[i + 1] * (i + 1)
	}
	return y
}
