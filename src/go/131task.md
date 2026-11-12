## task_id

```
Go/131
```

## prompt

```go
import (
    "strconv"
)

// Given a positive integer n, return the product of the odd Digits.
// Return 0 if all Digits are even.
// For example:
// Digits(1)  == 1
// Digits(4)  == 0
// Digits(235) == 15
func Digits(n int) int {
```

## declaration

```go
func Digits(n int) int {
```

## example_test

```go
func TestDigits(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(1, Digits(1))
    assert.Equal(0, Digits(4))
    assert.Equal(15, Digits(235))
}
```
