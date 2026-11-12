## task_id

```
Go/136
```

## prompt

```go

// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as nil.
// 
// Examples:
// LargestSmallestIntegers([2, 4, 1, 3, 5, 7]) == (nil, 1)
// LargestSmallestIntegers([]) == (nil, nil)
// LargestSmallestIntegers([0]) == (nil, nil)
func LargestSmallestIntegers(lst []int) [2]interface{}{
```

## declaration

```go
func LargestSmallestIntegers(lst []int) [2]interface{}{
```

## example_test

```go
func TestLargestSmallestIntegers(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([2]interface{}{nil, 1}, LargestSmallestIntegers([]int{2, 4, 1, 3, 5, 7}))
    assert.Equal([2]interface{}{nil, nil}, LargestSmallestIntegers([]int{}))
    assert.Equal([2]interface{}{nil, nil}, LargestSmallestIntegers([]int{0}))
}
```
