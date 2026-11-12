## task_id

```
Go/85
```

## prompt

```go

// Given a non-empty list of integers lst. Add the even elements that are at odd indices..
// 
// Examples:
// Add([4, 2, 6, 7]) ==> 2
func Add(lst []int) int {
```

## declaration

```go
func Add(lst []int) int {
```

## example_test

```go
func TestAdd(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2, Add([]int{4, 2, 6, 7}))
}
```
