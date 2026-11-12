## task_id

```
Go/30
```

## prompt

```go

// Return only positive numbers in the list.
// >>> GetPositive([-1, 2, -4, 5, 6])
// [2, 5, 6]
// >>> GetPositive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
// [5, 3, 2, 3, 9, 123, 1]
func GetPositive(l []int) []int {
```

## declaration

```go
func GetPositive(l []int) []int {
```

## example_test

```go
func TestGetPositive(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 5, 6}, GetPositive([]int{-1, 2, -4,5, 6}))
    assert.Equal([]int{5, 3, 2,  3, 9, 123, 1}, GetPositive([]int{5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}))
}
```
