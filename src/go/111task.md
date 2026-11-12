## task_id

```
Go/111
```

## prompt

```go
import (
    "strings"
)

// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
// 
// Example:
// Histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// Histogram('a b b a') == {'a': 2, 'b': 2}
// Histogram('a b c a b') == {'a': 2, 'b': 2}
// Histogram('b b b b a') == {'b': 4}
// Histogram('') == {}
func Histogram(test string) map[rune]int {
```

## declaration

```go
func Histogram(test string) map[rune]int {
```

## example_test

```go
func TestHistogram(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(map[rune]int{'a':2,'b': 2}, Histogram("a b b a"))
    assert.Equal(map[rune]int{'a': 2, 'b': 2}, Histogram("a b c a b"))
    assert.Equal(map[rune]int{'a': 1,'b': 1,'c': 1}, Histogram("a b c"))
    assert.Equal(map[rune]int{'b': 4}, Histogram("b b b b a"))
    assert.Equal(map[rune]int{}, Histogram(""))
}
```
