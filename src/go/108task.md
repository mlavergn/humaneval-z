## task_id

```
Go/108
```

## prompt

```go
import (
    "math"
    "strconv"
)

// Write a function CountNums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> CountNums([]) == 0
// >>> CountNums([-1, 11, -11]) == 1
// >>> CountNums([1, 1, 2]) == 3
func CountNums(arr []int) int {
```

## declaration

```go
func CountNums(arr []int) int {
```

## example_test

```go
func TestCountNums(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0+0*int(math.Pow(0, 0)), CountNums([]int{}))
    assert.Equal(1, CountNums([]int{-1, 11, -11}))
    assert.Equal(3, CountNums([]int{1, 1, 2}))
}
```
