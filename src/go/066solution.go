func Digitsum(x string) int {
    if len(x) == 0 {
		return 0
	}
	result := 0
	for _, i := range x {
		if 'A' <= i && i <= 'Z' {
			result += int(i)
		}
	}
	return result
}
