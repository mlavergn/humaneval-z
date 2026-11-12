func IncrList(l []int) []int {
    n := len(l)
	for i := 0; i < n; i++ {
		l[i]++
	}
	return l
}
