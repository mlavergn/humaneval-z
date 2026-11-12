func Fibfib(n int) int {
    if n <= 0 {
		return 0
	}
    switch n {
	case 0:
		return 0
	case 1:
		return 0
	case 2:
		return 1
	default:
		return Fibfib(n-1) + Fibfib(n-2) + Fibfib(n-3)
	}
}
