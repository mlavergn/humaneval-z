## task_id

```
Go/117
```

## prompt

```go
import (
    "bytes"
    "strings"
)

// Given a string s and a natural number n, you have been tasked to implement
// a function that returns a list of all words from string s that contain exactly
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// SelectWords("Mary had a little lamb", 4) ==> ["little"]
// SelectWords("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// SelectWords("simple white space", 2) ==> []
// SelectWords("Hello world", 4) ==> ["world"]
// SelectWords("Uncle sam", 3) ==> ["Uncle"]
func SelectWords(s string, n int) []string {
```

## declaration

```go
func SelectWords(s string, n int) []string {
```

## example_test

```go
func TestSelectWords(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"little"}, SelectWords("Mary had a little lamb", 4))
    assert.Equal([]string{"Mary", "lamb"}, SelectWords("Mary had a little lamb", 3))
    assert.Equal([]string{}, SelectWords("simple white space", 2))
    assert.Equal([]string{"world"}, SelectWords("Hello world", 4))
    assert.Equal([]string{"Uncle"}, SelectWords("Uncle sam", 3))
}
```
