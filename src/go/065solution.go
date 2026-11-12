func CircularShift(x int, shift int) string {
    s := strconv.Itoa(x)
	if shift > len(s) {
		runes := make([]rune, 0)
		for i := len(s)-1; i >= 0; i-- {
			runes = append(runes, rune(s[i]))
		}
		return string(runes)
	}else{
		return s[len(s)-shift:]+s[:len(s)-shift]
	}
}
