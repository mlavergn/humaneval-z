## task_id

```
Go/26
```

## prompt

```go

// From a list of integers, remove all elements that occur more than once.
// Keep order of elements left the same as in the input.
// >>> RemoveDuplicates([1, 2, 3, 2, 4])
// [1, 3, 4]
func RemoveDuplicates(numbers []int) []int {
```

## declaration

```go
func RemoveDuplicates(numbers []int) []int {
```

## example_test

```go
func TestRemoveDuplicates(t *testing.T) {
    assert := assert.New(t)  
    assert.Equal([]int{1,  3, 4}, RemoveDuplicates([]int{1,2, 3,2,4}))
}
```
