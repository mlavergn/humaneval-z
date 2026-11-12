## task_id

```
Go/64
```

## prompt

```go
import (
    "strings"
)

// Write a function VowelsCount which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
// 
// Example:
// >>> VowelsCount("abcde")
// 2
// >>> VowelsCount("ACEDY")
// 3
func VowelsCount(s string) int {
```

## declaration

```go
func VowelsCount(s string) int {
```

## example_test

```go
func TestVowelsCount(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2, VowelsCount("abcde"))
    assert.Equal(3, VowelsCount("ACEDY"))
}
```
