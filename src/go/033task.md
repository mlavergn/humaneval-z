## task_id

```
Go/33
```

## prompt

```go
import (
    "sort"
)

// This function takes a list l and returns a list l' such that
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> SortThird([1, 2, 3])
// [1, 2, 3]
// >>> SortThird([5, 6, 3, 4, 8, 9, 2])
// [2, 6, 3, 4, 8, 9, 5]
func SortThird(l []int) []int {
```

## declaration

```go
func SortThird(l []int) []int {
```

## example_test

```go
func TestSortThird(t *testing.T) {
    assert := assert.New(t)
	same := func(src []int, target []int) bool {
		for i := 0; i < len(src); i++ {
			if src[i] != target[i] {
				return false
			}
		}
		return true
	}
	assert.Equal(true, same([]int{1, 2, 3}, SortThird([]int{1, 2, 3})))
	assert.Equal(true, same([]int{2, 6, 3, 4, 8, 9, 5}, SortThird([]int{5, 6, 3, 4, 8, 9, 2})))
}
```
