func PrimeFib(n int) int {
    isPrime := func(p int) bool {
		if p < 2 {
			return false
		}
		for i := 2; i < int(math.Min(math.Sqrt(float64(p))+1, float64(p-1))); i++ {
			if p%i == 0 {
				return false
			}
		}
		return true
	}
	f := []int{0, 1}
	for {
		f = append(f, f[len(f)-1]+f[len(f)-2])
		if isPrime(f[len(f)-1]) {
			n -= 1
		}
		if n == 0 {
			return f[len(f)-1]
		}
	}
}
