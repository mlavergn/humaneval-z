## task_id

```
Go/137
```

## prompt

```go
import (
    "fmt"
    "strconv"
    "strings"
)

// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return nil if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
// 
// CompareOne(1, 2.5) ➞ 2.5
// CompareOne(1, "2,3") ➞ "2,3"
// CompareOne("5,1", "6") ➞ "6"
// CompareOne("1", 1) ➞ nil
func CompareOne(a, b interface{}) interface{} {
```

## declaration

```go
func CompareOne(a, b interface{}) interface{} {
```

## example_test

```go
func TestCompareOne(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2.5, CompareOne(1, 2.5))
    assert.Equal("2,3", CompareOne(1, "2,3"))
    assert.Equal("6", CompareOne("5,1", "6"))
    assert.Equal(nil, CompareOne("1", 1))
}
```
