func EvenOddPalindrome(n int) [2]int {
    is_palindrome := func (n int) bool {
        s := strconv.Itoa(n)
        for i := 0;i < len(s)>>1;i++ {
            if s[i] != s[len(s)-i-1] {
                return false
            }
        }
        return true
    }

    even_palindrome_count := 0
    odd_palindrome_count := 0

    for i :=1;i<n+1;i++ {
        if i%2 == 1 && is_palindrome(i){
                odd_palindrome_count ++
        } else if i%2 == 0 && is_palindrome(i) {
            even_palindrome_count ++
        }
    }
    return [2]int{even_palindrome_count, odd_palindrome_count}
}
