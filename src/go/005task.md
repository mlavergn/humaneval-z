## task_id

```
Go/5
```

## prompt

```go

// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> Intersperse([], 4)
// []
// >>> Intersperse([1, 2, 3], 4)
// [1, 4, 2, 4, 3]
func Intersperse(numbers []int, delimeter int) []int {
```

## declaration

```go
func Intersperse(numbers []int, delimeter int) []int {
```

## example_test

```go
func TestIntersperse(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{}, Intersperse([]int{}, 4))
    assert.Equal([]int{1,4,2,4,3}, Intersperse([]int{1,2,3}, 4))
}
```
