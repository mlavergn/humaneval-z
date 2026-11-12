func RemoveDuplicates(numbers []int) []int {
    c := make(map[int] int)
	for _, number := range numbers {
		if i, ok := c[number]; ok {
			c[number] = i + 1
		} else {
			c[number] = 1
		}
	}
	result := make([]int, 0)
	for _, number := range numbers {
		if c[number] <= 1 {
			result = append(result, number)
		}
	}
	return result
}
