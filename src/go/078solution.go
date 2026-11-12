func HexKey(num string) int {
    primes := map[int32]interface{}{'2': nil, '3': nil, '5': nil, '7': nil, 'B': nil, 'D': nil}
	total := 0
	for _, c := range num {
		if _, ok := primes[c]; ok {
			total++
		}
	}
	return total
}
