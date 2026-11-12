func HowManyTimes(str string,substring string) int{
    times := 0
	for i := 0; i < (len(str) - len(substring) + 1); i++ {
		if str[i:i+len(substring)] == substring {
			times += 1
		}
	}
	return times
}
