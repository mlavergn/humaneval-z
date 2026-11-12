func LargestPrimeFactor(n int) int {
    isPrime := func(n int) bool {
        for i := 2; i < int(math.Pow(float64(n), 0.5)+1); i++ {
            if n%i == 0 {
                return false
            }
        }
        return true
    }

    largest := 1
    for j := 2; j < n + 1; j++ {
		if n % j == 0 && isPrime(j) {
			if j > largest {
				largest = j
			}
		}
	}
    return largest
}
