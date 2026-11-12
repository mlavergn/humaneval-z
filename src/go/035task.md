## task_id

```
Go/35
```

## prompt

```go

// Return maximum element in the list.
// >>> MaxElement([1, 2, 3])
// 3
// >>> MaxElement([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// 123
func MaxElement(l []int) int {
```

## declaration

```go
func MaxElement(l []int) int {
```

## example_test

```go
func TestMaxElement(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(3, MaxElement([]int{1, 2, 3}))
    assert.Equal(123, MaxElement([]int{5, 3, -5, 2, -3, 3, 9,0, 123, 1, -10}))
}
```
