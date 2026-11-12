func BelowThreshold(l []int,t int) bool {
    for _, n := range l {
		if n >= t {
			return false
		}
	}
	return true
}
