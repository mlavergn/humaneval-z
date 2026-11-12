## task_id

```
Go/9
```

## prompt

```go
import (
    "math"
)

// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> RollingMax([1, 2, 3, 2, 3, 4, 2])
// [1, 2, 3, 3, 3, 4, 4]
func RollingMax(numbers []int) []int {
```

## declaration

```go
func RollingMax(numbers []int) []int {
```

## example_test

```go
func TestRollingMax(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 2, 3,3, 3, 4, 4}, RollingMax([]int{1, 2, 3, 2, 3, 4, 2}))
}
```
