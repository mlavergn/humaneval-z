## task_id

```
Go/114
```

## prompt

```go
import (
    "math"
)

// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// Minsubarraysum([2, 3, 4, 1, 2, 4]) == 1
// Minsubarraysum([-1, -2, -3]) == -6
func Minsubarraysum(nums []int) int {
```

## declaration

```go
func Minsubarraysum(nums []int) int {
```

## example_test

```go
func TestMinSubArraySum(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(1, Minsubarraysum([]int{2, 3, 4, 1, 2, 4}))
    assert.Equal(-6, Minsubarraysum([]int{-1, -2, -3}))
}
```
