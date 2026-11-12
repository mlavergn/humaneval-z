## task_id

```
Go/158
```

## prompt

```go
import (
    "sort"
)

// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
// 
// FindMax(["name", "of", "string"]) == "string"
// FindMax(["name", "enam", "game"]) == "enam"
// FindMax(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
func FindMax(words []string) string {
```

## declaration

```go
func FindMax(words []string) string {
```

## example_test

```go
func TestFindMax(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("string", FindMax([]string{"name", "of", "string"}))
    assert.Equal("enam", FindMax([]string{"name", "enam", "game"}))
    assert.Equal("aaaaaaa", FindMax([]string{"aaaaaaa", "bb", "cc"}))
}
```
