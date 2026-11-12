func GreatestCommonDivisor(a int,b int) int{
    if b < 2 {
		return b
	}
	var gcd int = 1
	for i := 2; i < b; i++ {
		if a%i == 0 && b%i == 0 {
			gcd = i
		}
	}
	return gcd
}
