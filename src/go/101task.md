## task_id

```
Go/101
```

## prompt

```go
import (
    "strings"
)

// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
// 
// For example:
// WordsString("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// WordsString("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
func WordsString(s string) []string {
```

## declaration

```go
func WordsString(s string) []string {
```

## example_test

```go
func TestWordsString(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"Hi", "my", "name", "is", "John"}, WordsString("Hi, my name is John"))
    assert.Equal([]string{"One", "two", "three", "four", "five", "six"}, WordsString("One, two, three, four, five, six"))
}
```
