## task_id

```
Go/93
```

## prompt

```go
import (
    "strings"
)

// Write a function that takes a message, and Encodes in such a
// way that it swaps case of all letters, replaces all vowels in
// the message with the letter that appears 2 places ahead of that
// vowel in the english alphabet.
// Assume only letters.
// 
// Examples:
// >>> Encode('test')
// 'TGST'
// >>> Encode('This is a message')
// 'tHKS KS C MGSSCGG'
func Encode(message string) string {
```

## declaration

```go
func Encode(message string) string {
```

## example_test

```go
func TestEncode(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("TGST", Encode("test"))
    assert.Equal("tHKS KS C MGSSCGG", Encode("This is a message"))
}
```
