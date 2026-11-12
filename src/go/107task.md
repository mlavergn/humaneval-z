## task_id

```
Go/107
```

## prompt

```go
import (
    "strconv"
)

// Given a positive integer n, return a tuple that has the number of even and odd
// integer palindromes that fall within the range(1, n), inclusive.
// 
// Example 1:
// 
// Input: 3
// Output: (1, 2)
// Explanation:
// Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd.
// 
// Example 2:
// 
// Input: 12
// Output: (4, 6)
// Explanation:
// Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd.
// 
// Note:
// 1. 1 <= n <= 10^3
// 2. returned tuple has the number of even and odd integer palindromes respectively.
func EvenOddPalindrome(n int) [2]int {
```

## declaration

```go
func EvenOddPalindrome(n int) [2]int {
```

## example_test

```go
func TestEvenOddPalindrome(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([2]int{4,6}, EvenOddPalindrome(12))
    assert.Equal([2]int{1,2}, EvenOddPalindrome(3))
}
```
