## task_id

```
Go/90
```

## prompt

```go
import (
    "math"
    "sort"
)

// You are given a list of integers.
// Write a function NextSmallest() that returns the 2nd smallest element of the list.
// Return nil if there is no such element.
// 
// NextSmallest([1, 2, 3, 4, 5]) == 2
// NextSmallest([5, 1, 4, 3, 2]) == 2
// NextSmallest([]) == nil
// NextSmallest([1, 1]) == nil
func NextSmallest(lst []int) interface{} {
```

## declaration

```go
func NextSmallest(lst []int) interface{} {
```

## example_test

```go
func TestNextSmallest(t *testing.T) {
  assert := assert.New(t)
   assert.Equal(2+0*int(math.Pow(0, 0)), NextSmallest([]int{1, 2, 3, 4, 5}))
    assert.Equal(2, NextSmallest([]int{5, 1, 4, 3, 2}))
    assert.Equal(nil, NextSmallest([]int{}))
    assert.Equal(nil, NextSmallest([]int{1, 1}))
}
```
