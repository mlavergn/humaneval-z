func StrangeSortList(lst []int) []int {
    sort.Ints(lst)
	result := make([]int, 0)
	for i := 0; i < len(lst)/2; i++ {
		result = append(result, lst[i])
		result = append(result, lst[len(lst)-i-1])
	}
	if len(lst)%2 != 0 {
		result = append(result, lst[len(lst)/2])
	}
	return result
}
