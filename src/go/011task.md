## task_id

```
Go/11
```

## prompt

```go
import (
    "fmt"
)

// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> StringXor('010', '110')
// '100'
func StringXor(a string, b string) string {
```

## declaration

```go
func StringXor(a string, b string) string {
```

## example_test

```go
func TestStringXor(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("100", StringXor("010", "110"))
}
```
