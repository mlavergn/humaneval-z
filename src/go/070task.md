## task_id

```
Go/70
```

## prompt

```go
import (
    "sort"
)

// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
// 
// Examples:
// StrangeSortList([1, 2, 3, 4]) == [1, 4, 2, 3]
// StrangeSortList([5, 5, 5, 5]) == [5, 5, 5, 5]
// StrangeSortList([]) == []
func StrangeSortList(lst []int) []int {
```

## declaration

```go
func StrangeSortList(lst []int) []int {
```

## example_test

```go
func TestStrangeSortList(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 4, 2, 3}, StrangeSortList([]int{1,2, 3, 4}))
    assert.Equal([]int{5, 5, 5, 5}, StrangeSortList([]int{5,5, 5, 5}))
    assert.Equal([]int{}, StrangeSortList([]int{}))
}
```
