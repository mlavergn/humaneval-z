func RescaleToUnit(numbers []float64) []float64 {
    smallest := numbers[0]
	largest := smallest
	for _, n := range numbers {
		if smallest > n {
			smallest = n
		}
		if largest < n {
			largest = n
		}
	}
	if smallest == largest {
		return numbers
	}
	for i, n := range numbers {
		numbers[i] = (n - smallest) / (largest - smallest)
	}
	return numbers
}
