## task_id

```
Go/125
```

## prompt

```go
import (
    "strings"
)

// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// SplitWords("Hello world!") ➞ ["Hello", "world!"]
// SplitWords("Hello,world!") ➞ ["Hello", "world!"]
// SplitWords("abcdef") == 3
func SplitWords(txt string) interface{} {
```

## declaration

```go
func SplitWords(txt string) interface{} {
```

## example_test

```go
func TestSplitWords(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"Hello", "world!"}, SplitWords("Hello world!"))
    assert.Equal([]string{"Hello", "world!"}, SplitWords("Hello,world!"))
    assert.Equal(3, SplitWords("abcdef"))
}
```
