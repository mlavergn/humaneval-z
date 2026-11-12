func Fib4(n int) int {
    switch n {
	case 0:
		return 0
	case 1:
		return 0
	case 2:
		return 2
	case 3:
		return 0
	default:
		return Fib4(n-1) + Fib4(n-2) + Fib4(n-3) + Fib4(n-4)
	}
}
