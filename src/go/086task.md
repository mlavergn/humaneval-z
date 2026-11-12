## task_id

```
Go/86
```

## prompt

```go
import (
    "sort"
    "strings"
)

// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
// 
// For example:
// AntiShuffle('Hi') returns 'Hi'
// AntiShuffle('hello') returns 'ehllo'
// AntiShuffle('Hello World!!!') returns 'Hello !!!Wdlor'
func AntiShuffle(s string) string {
```

## declaration

```go
func AntiShuffle(s string) string {
```

## example_test

```go
func TestAntiShuffle(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("Hi", AntiShuffle("Hi"))
    assert.Equal("ehllo", AntiShuffle("hello"))
    assert.Equal("Hello !!!Wdlor", AntiShuffle("Hello World!!!"))
}
```
