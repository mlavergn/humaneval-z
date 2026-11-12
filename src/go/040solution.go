func TriplesSumToZero(l []int) bool {
    for i := 0; i < len(l) - 2; i++ {
		for j := i + 1; j < len(l) - 1; j++ {
			for k := j + 1; k < len(l); k++ {
				if l[i] + l[j] + l[k] == 0 {
					return true
				}
			}
		}
	}
	return false
}
