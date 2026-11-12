## task_id

```
Go/116
```

## prompt

```go
import (
    "fmt"
    "sort"
)

// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
// 
// It must be implemented like this:
// >>> SortArray([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
// >>> SortArray([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
// >>> SortArray([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
func SortArray(arr []int) []int {
```

## declaration

```go
func SortArray(arr []int) []int {
```

## example_test

```go
func TestSortArray(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 2, 4, 3, 5}, SortArray([]int{1,5,2,3,4}))
    assert.Equal([]int{-4, -2, -6, -5, -3}, SortArray([]int{-2,-3,-4,-5,-6}))
    assert.Equal([]int{0, 1, 2, 4, 3}, SortArray([]int{1,0,2,3,4}))
}
```
