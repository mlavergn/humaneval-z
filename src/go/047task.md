## task_id

```
Go/47
```

## prompt

```go
import (
	"sort"
)

// Return Median of elements in the list l.
// >>> Median([3, 1, 2, 4, 5])
// 3.0
// >>> Median([-10, 4, 6, 1000, 10, 20])
// 15.0
func Median(l []int) float64 {
```

## declaration

```go
func Median(l []int) float64 {
```

## example_test

```go
func TestMedian(t *testing.T) {
	assert := assert.New(t)
	assert.Equal(3.0, Median([]int{3, 1, 2, 4, 5}))
	assert.Equal(8.0, Median([]int{-10, 4, 6, 1000, 10, 20}))
}
```
