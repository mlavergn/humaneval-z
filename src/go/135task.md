## task_id

```
Go/135
```

## prompt

```go

// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
// 
// Examples:
// CanArrange([1,2,4,3,5]) = 3
// CanArrange([1,2,3]) = -1
func CanArrange(arr []int) int {
```

## declaration

```go
func CanArrange(arr []int) int {
```

## example_test

```go
func TestCanArrange(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(3, CanArrange([]int{1,2,4,3,5}))
    assert.Equal(-1, CanArrange([]int{1,2,3}))
}
```
