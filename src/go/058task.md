## task_id

```
Go/58
```

## prompt

```go
import (
    "sort"
)

// Return sorted unique Common elements for two lists.
// >>> Common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
// [1, 5, 653]
// >>> Common([5, 3, 2, 8], [3, 2])
// [2, 3]
func Common(l1 []int,l2 []int) []int {
```

## declaration

```go
func Common(l1 []int,l2 []int) []int {
```

## example_test

```go
func TestCommon(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 5, 653}, Common([]int{1, 4, 3, 34, 653, 2, 5}, []int{5, 7, 1, 5, 9, 653, 121}))
    assert.Equal([]int{2, 3}, Common([]int{5, 3, 2, 8}, []int{3, 2}))
}
```
