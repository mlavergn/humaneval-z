## task_id

```
Go/73
```

## prompt

```go

// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
// 
// For example:
// SmallestChange([1,2,3,5,4,7,9,6]) == 4
// SmallestChange([1, 2, 3, 4, 3, 2, 2]) == 1
// SmallestChange([1, 2, 3, 2, 1]) == 0
func SmallestChange(arr []int) int {
```

## declaration

```go
func SmallestChange(arr []int) int {
```

## example_test

```go
func TestSmallestChange(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(4, SmallestChange([]int{1,2,3,5,4,7,9,6}))
    assert.Equal(1, SmallestChange([]int{1, 2, 3, 4, 3, 2, 2}))
    assert.Equal(0, SmallestChange([]int{1, 2, 3, 2, 1}))
    assert.Equal(0, SmallestChange([]int{3, 1, 1, 3}))
}
```
