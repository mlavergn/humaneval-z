func VowelsCount(s string) int {
    s = strings.ToLower(s)
	vowels := map[int32]interface{}{'a': nil, 'e': nil, 'i': nil, 'o': nil, 'u': nil}
	count := 0
	for _, i := range s {
		if _, ok := vowels[i]; ok {
			count++
		}
	}
	if (s[len(s)-1]) == 'y' {
		count++
	}
	return count
}
