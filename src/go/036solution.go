func FizzBuzz(n int) int {
    ns := make([]int, 0)
	for i := 0; i < n; i++ {
		if i%11 == 0 || i%13 == 0 {
			ns = append(ns, i)
		}
	}
	temp := make([]string, 0)
	for _, i := range ns {
		temp = append(temp, strconv.Itoa(i))
	}
	join := strings.Join(temp, "")
	ans := 0
	for _, c := range join {
		if c == '7' {
			ans++
		}
	}
	return ans
}
