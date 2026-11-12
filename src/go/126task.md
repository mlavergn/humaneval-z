## task_id

```
Go/126
```

## prompt

```go

// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return false. Assume no negative numbers and only integers.
// 
// Examples
// IsSorted([5]) ➞ true
// IsSorted([1, 2, 3, 4, 5]) ➞ true
// IsSorted([1, 3, 2, 4, 5]) ➞ false
// IsSorted([1, 2, 3, 4, 5, 6]) ➞ true
// IsSorted([1, 2, 3, 4, 5, 6, 7]) ➞ true
// IsSorted([1, 3, 2, 4, 5, 6, 7]) ➞ false
// IsSorted([1, 2, 2, 3, 3, 4]) ➞ true
// IsSorted([1, 2, 2, 2, 3, 4]) ➞ false
func IsSorted(lst []int) bool {
```

## declaration

```go
func IsSorted(lst []int) bool {
```

## example_test

```go
func TestIsSorted(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, IsSorted([]int{5}))
    assert.Equal(true, IsSorted([]int{1, 2, 3, 4, 5}))
    assert.Equal(false, IsSorted([]int{1, 3, 2, 4, 5}))
    assert.Equal(true, IsSorted([]int{1, 2, 3, 4, 5, 6}))
    assert.Equal(true, IsSorted([]int{1, 2, 3, 4, 5, 6, 7}))
    assert.Equal(false, IsSorted([]int{1, 3, 2, 4, 5, 6, 7}))
    assert.Equal(false, IsSorted([]int{1, 2, 2, 2, 3, 4}))
    assert.Equal(true, IsSorted([]int{1, 2, 2, 3, 3, 4}))
}
```
