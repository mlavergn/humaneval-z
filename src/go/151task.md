## task_id

```
Go/151
```

## prompt

```go
import (
    "math"
)

// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
// 
// DoubleTheDifference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// DoubleTheDifference([-1, -2, 0]) == 0
// DoubleTheDifference([9, -2]) == 81
// DoubleTheDifference([0]) == 0
// 
// If the input list is empty, return 0.
func DoubleTheDifference(lst []float64) int {
```

## declaration

```go
func DoubleTheDifference(lst []float64) int {
```

## example_test

```go
func TestDoubleTheDifference(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(10, DoubleTheDifference([]float64{1,3,2,0}))
    assert.Equal(0, DoubleTheDifference([]float64{-1,-2,0}))
    assert.Equal(81, DoubleTheDifference([]float64{9,-2}))
    assert.Equal(0, DoubleTheDifference([]float64{0}))
}
```
