func PairsSumToZero(l []int) bool {
    seen := map[int]bool{}
	for i := 0; i < len(l); i++ {
		for j := i + 1; j < len(l); j++ {
			if l[i] + l[j] == 0 {
				if _, ok := seen[l[i]]; !ok {
					seen[l[i]] = true
					return true
				}
				if _, ok := seen[l[j]]; !ok {
					seen[l[j]] = true
					return true
				}
			}
		}
	}
	return false
}
