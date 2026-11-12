## task_id

```
Go/69
```

## prompt

```go

// You are given a non-empty list of positive integers. Return the greatest integer that is greater than
// zero, and has a frequency greater than or equal to the value of the integer itself.
// The frequency of an integer is the number of times it appears in the list.
// If no such a value exist, return -1.
// Examples:
// Search([4, 1, 2, 2, 3, 1]) == 2
// Search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
// Search([5, 5, 4, 4, 4]) == -1
func Search(lst []int) int {
```

## declaration

```go
func Search(lst []int) int {
```

## example_test

```go
func TestSearch(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2, Search([]int{4, 1, 2, 2, 3, 1}))
    assert.Equal(3, Search([]int{1, 2, 2, 3, 3, 3, 4, 4, 4}))
    assert.Equal(-1, Search([]int{5, 5, 4, 4, 4}))
}
```
