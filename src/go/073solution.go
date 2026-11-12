func SmallestChange(arr []int) int {
    count := 0
	for i := 0; i < len(arr) - 1; i++ {
        a := arr[len(arr) - i - 1]
		if arr[i] != a {
			arr[i] = a
            count++
		}
	}
	return count
}
