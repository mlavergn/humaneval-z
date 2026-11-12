func WillItFly(q []int,w int) bool {
    sum := 0
	for i := 0; i < len(q); i++ {
		sum += q[i]
	}
	if sum <= w && isPalindrome(q) {
		return true
	}
	return false
}

func isPalindrome(arr []int) bool {
	for i := 0; i < (len(arr) / 2); i++ {
		if arr[i] != arr[len(arr) - i - 1] {
			return false
		}
	}
	return true
}
