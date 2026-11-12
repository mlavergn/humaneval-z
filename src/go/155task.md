## task_id

```
Go/155
```

## prompt

```go
import (
    "strconv"
)

// Given an integer. return a tuple that has the number of even and odd digits respectively.
// 
// Example:
// EvenOddCount(-12) ==> (1, 1)
// EvenOddCount(123) ==> (1, 2)
func EvenOddCount(num int) [2]int {
```

## declaration

```go
func EvenOddCount(num int) [2]int {
```

## example_test

```go
func TestEvenOddCount(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([2]int{1, 1}, EvenOddCount(-12))
    assert.Equal([2]int{1, 2}, EvenOddCount(123))
}
```
