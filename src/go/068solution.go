func Pluck(arr []int) []int {
    result := make([]int, 0)
	if len(arr) == 0 {
		return result
	}
	evens := make([]int, 0)
	min := math.MaxInt64
	minIndex := 0
	for i, x := range arr {
		if x%2 == 0 {
			evens = append(evens, x)
			if x < min {
				min = x
				minIndex = i
			}
		}
	}
	if len(evens) == 0 {
		return result
	}
	result = []int{min, minIndex}
	return result
}
