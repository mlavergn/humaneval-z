## task_id

```
Go/134
```

## prompt

```go
import (
    "strings"
)

// Create a function that returns true if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and false otherwise.
// Note: "word" is a group of characters separated by space.
// 
// Examples:
// CheckIfLastCharIsALetter("apple pie") ➞ false
// CheckIfLastCharIsALetter("apple pi e") ➞ true
// CheckIfLastCharIsALetter("apple pi e ") ➞ false
// CheckIfLastCharIsALetter("") ➞ false
func CheckIfLastCharIsALetter(txt string) bool {
```

## declaration

```go
func CheckIfLastCharIsALetter(txt string) bool {
```

## example_test

```go
func TestCheckIfLastCharIsALetter(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, CheckIfLastCharIsALetter("apple pi e"))
    assert.Equal(false, CheckIfLastCharIsALetter(""))
    assert.Equal(false, CheckIfLastCharIsALetter("apple pie"))
    assert.Equal(false, CheckIfLastCharIsALetter("apple pi e "))
}
```
