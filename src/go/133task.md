## task_id

```
Go/133
```

## prompt

```go
import (
    "math"
)

// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
func SumSquares(lst []float64) int {
```

## declaration

```go
func SumSquares(lst []float64) int {
```

## example_test

```go
func TestSumSquares(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(14, SumSquares([]float64{1,2,3}))
    assert.Equal(98, SumSquares([]float64{1,4,9}))
    assert.Equal(84, SumSquares([]float64{1,3,5,7}))
    assert.Equal(29, SumSquares([]float64{1.4,4.2,0}))
    assert.Equal(6, SumSquares([]float64{-2.4,1,1}))
}
```
