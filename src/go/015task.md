## task_id

```
Go/15
```

## prompt

```go
import (
    "strconv"
)

// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> StringSequence(0)
// '0'
// >>> StringSequence(5)
// '0 1 2 3 4 5'
func StringSequence(n int) string{
```

## declaration

```go
func StringSequence(n int) string{
```

## example_test

```go
func TestStringSequence(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("0", StringSequence(0))
    assert.Equal("0 1 2 3 4 5", StringSequence(5))
}
```
