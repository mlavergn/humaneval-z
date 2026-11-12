## task_id

```
Go/121
```

## prompt

```go

// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
// 
// Examples
// Solution([5, 8, 7, 1]) ==> 12
// Solution([3, 3, 3, 3, 3]) ==> 9
// Solution([30, 13, 24, 321]) ==>0
func Solution(lst []int) int {
```

## declaration

```go
func Solution(lst []int) int {
```

## example_test

```go
func TestSolution(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(12, Solution([]int{5, 8, 7, 1}))
    assert.Equal(9, Solution([]int{3, 3, 3, 3, 3}))
    assert.Equal(0, Solution([]int{30, 13, 24, 321}))
}
```
