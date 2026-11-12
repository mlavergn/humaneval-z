## task_id

```
Go/128
```

## prompt

```go
import (
    "math"
)

// You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return nil for empty arr.
// 
// Example:
// >>> ProdSigns([1, 2, 2, -4]) == -9
// >>> ProdSigns([0, 1]) == 0
// >>> ProdSigns([]) == nil
func ProdSigns(arr []int) interface{} {
```

## declaration

```go
func ProdSigns(arr []int) interface{} {
```

## example_test

```go
func TestProdSigns(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(-9, ProdSigns([]int{1, 2, 2, -4}))
    assert.Equal(0, ProdSigns([]int{0, 1}))
    assert.Equal(nil, ProdSigns([]int{}))
}
```
