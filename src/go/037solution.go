func SortEven(l []int) []int {
    evens := make([]int, 0)
	for i := 0; i < len(l); i += 2 {
		evens = append(evens, l[i])
	}
	sort.Ints(evens)
	j := 0
	for i := 0; i < len(l); i += 2 {
		l[i] = evens[j]
		j++
	}
	return l
}
