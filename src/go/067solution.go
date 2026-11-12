func FruitDistribution(s string,n int) int {
    split := strings.Split(s, " ")
	for _, i := range split {
		atoi, err := strconv.Atoi(i)
		if err != nil {
			continue
		}
		n = n - atoi
	}
	return n
}
