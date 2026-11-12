## task_id

```
Go/37
```

## prompt

```go
import (
	"sort"
)

// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> SortEven([1, 2, 3])
// [1, 2, 3]
// >>> SortEven([5, 6, 3, 4])
// [3, 6, 5, 4]
func SortEven(l []int) []int {
```

## declaration

```go
func SortEven(l []int) []int {
```

## example_test

```go
func TestSortEven(t *testing.T) {
	assert := assert.New(t)
	same := func(src []int, target []int) bool {
		for i := 0; i < len(src); i++ {
			if src[i] != target[i] {
				return false
			}
		}
		return true
	}
	assert.Equal(true, same([]int{1, 2, 3}, SortEven([]int{1, 2, 3})))
	assert.Equal(true, same([]int{3,6,5,4}, SortEven([]int{5,6,3,4})))
}
```
