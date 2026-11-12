## task_id

```
Go/8
```

## prompt

```go

// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> SumProduct([])
// (0, 1)
// >>> SumProduct([1, 2, 3, 4])
// (10, 24)
func SumProduct(numbers []int) [2]int {
```

## declaration

```go
func SumProduct(numbers []int) [2]int {
```

## example_test

```go
func TestSumProduct(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([2]int{0, 1}, SumProduct([]int{}))
    assert.Equal([2]int{10,24}, SumProduct([]int{1, 2,3,4}))
}
```
