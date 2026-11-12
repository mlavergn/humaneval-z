func Search(lst []int) int {
    countMap := make(map[int]int)
	for _, i := range lst {
		if count, ok := countMap[i]; ok {
			countMap[i] = count + 1
		} else {
			countMap[i] = 1
		}
	}
	max := -1
	for i, count := range countMap {
		if count >= i && count > max {
			max = i
		}
	}
	return max
}
