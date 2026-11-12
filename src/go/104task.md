## task_id

```
Go/104
```

## prompt

```go
import (
    "sort"
    "strconv"
)

// Given a list of positive integers x. return a sorted list of all
// elements that hasn't any even digit.
// 
// Note: Returned list should be sorted in increasing order.
// 
// For example:
// >>> UniqueDigits([15, 33, 1422, 1])
// [1, 15, 33]
// >>> UniqueDigits([152, 323, 1422, 10])
// []
func UniqueDigits(x []int) []int {
```

## declaration

```go
func UniqueDigits(x []int) []int {
```

## example_test

```go
func TestUniqueDigits(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 15, 33}, UniqueDigits([]int{15, 33, 1422, 1}))
    assert.Equal([]int{}, UniqueDigits([]int{152, 323, 1422, 10}))
}
```
