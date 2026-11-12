func MaxElement(l []int) int {
    max := l[0]
	for _, x := range l {
		if x > max {
			max = x
		}
	}
	return max
}
