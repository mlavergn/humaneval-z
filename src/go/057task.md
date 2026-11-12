## task_id

```
Go/57
```

## prompt

```go

// Return true is list elements are Monotonically increasing or decreasing.
// >>> Monotonic([1, 2, 4, 20])
// true
// >>> Monotonic([1, 20, 4, 10])
// false
// >>> Monotonic([4, 1, 0, -10])
// true
func Monotonic(l []int) bool {
```

## declaration

```go
func Monotonic(l []int) bool {
```

## example_test

```go
func TestMonotonic(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, Monotonic([]int{1, 2, 4, 10}))
    assert.Equal(false, Monotonic([]int{1, 20, 4, 10}))
    assert.Equal(true, Monotonic([]int{4, 1, 0, -10}))
}
```
