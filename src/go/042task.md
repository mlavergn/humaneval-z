## task_id

```
Go/42
```

## prompt

```go

// Return list with elements incremented by 1.
// >>> IncrList([1, 2, 3])
// [2, 3, 4]
// >>> IncrList([5, 3, 5, 2, 3, 3, 9, 0, 123])
// [6, 4, 6, 3, 4, 4, 10, 1, 124]
func IncrList(l []int) []int {
```

## declaration

```go
func IncrList(l []int) []int {
```

## example_test

```go
func TestIncrList(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 3, 4}, IncrList([]int{1, 2, 3}))
    assert.Equal([]int{6, 3, 6, 3, 4, 4, 10, 1, 124}, IncrList([]int{5, 2, 5, 2, 3, 3, 9, 0, 123}))
}
```
