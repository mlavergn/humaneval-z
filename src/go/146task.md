## task_id

```
Go/146
```

## prompt

```go
import (
    "strconv"
)

// Write a function that takes an array of numbers as input and returns
// the number of elements in the array that are greater than 10 and both
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// Specialfilter([15, -73, 14, -15]) => 1
// Specialfilter([33, -2, -3, 45, 21, 109]) => 2
func Specialfilter(nums []int) int {
```

## declaration

```go
func Specialfilter(nums []int) int {
```

## example_test

```go
func TestSpecialFilter(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(1, Specialfilter([]int{15, -73, 14, -15}))
    assert.Equal(2, Specialfilter([]int{33, -2, -3, 45, 21, 109}))
}               
```
