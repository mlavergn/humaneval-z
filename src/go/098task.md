## task_id

```
Go/98
```

## prompt

```go
import (
    "strings"
)

// Given a string s, count the number of uppercase vowels in even indices.
// 
// For example:
// CountUpper('aBCdEf') returns 1
// CountUpper('abcdefg') returns 0
// CountUpper('dBBE') returns 0
func CountUpper(s string) int {
```

## declaration

```go
func CountUpper(s string) int {
```

## example_test

```go
func TestCountUpper(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(1, CountUpper("aBCdEf"))
    assert.Equal(0, CountUpper("abcdefg"))
    assert.Equal(0, CountUpper("dBBE"))
}
```
