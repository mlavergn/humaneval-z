## task_id

```
Go/145
```

## prompt

```go
import (
    "sort"
    "strconv"
)

// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
// 
// For example:
// >>> OrderByPoints([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
// >>> OrderByPoints([]) == []
func OrderByPoints(nums []int) []int {
```

## declaration

```go
func OrderByPoints(nums []int) []int {
```

## example_test

```go
func TestOrderByPoints(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{-1, -11, 1, -12, 11}, OrderByPoints([]int{1, 11, -1, -11, -12}))
    assert.Equal([]int{}, OrderByPoints([]int{}))
}
```
