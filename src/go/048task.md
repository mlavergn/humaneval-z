## task_id

```
Go/48
```

## prompt

```go

// Checks if given string is a palindrome
// >>> IsPalindrome('')
// true
// >>> IsPalindrome('aba')
// true
// >>> IsPalindrome('aaaaa')
// true
// >>> IsPalindrome('zbcd')
// false
func IsPalindrome(text string) bool {
```

## declaration

```go
func IsPalindrome(text string) bool {
```

## example_test

```go
func TestIsPalindrome(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, IsPalindrome(""))
    assert.Equal(true, IsPalindrome("aba"))
    assert.Equal(true, IsPalindrome("aaaaa"))
    assert.Equal(false, IsPalindrome("zbcd"))
}
```
