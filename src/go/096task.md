## task_id

```
Go/96
```

## prompt

```go

// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// CountUpTo(5) => [2,3]
// CountUpTo(11) => [2,3,5,7]
// CountUpTo(0) => []
// CountUpTo(20) => [2,3,5,7,11,13,17,19]
// CountUpTo(1) => []
// CountUpTo(18) => [2,3,5,7,11,13,17]
func CountUpTo(n int) []int {
```

## declaration

```go
func CountUpTo(n int) []int {
```

## example_test

```go
func TestCountUpTo(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 3}, CountUpTo(5))
    assert.Equal([]int{2, 3, 5, 7}, CountUpTo(11))
    assert.Equal([]int{}, CountUpTo(0))
    assert.Equal([]int{2, 3, 5, 7, 11, 13, 17, 19}, CountUpTo(20))
    assert.Equal([]int{}, CountUpTo(1))
    assert.Equal([]int{2, 3, 5, 7, 11, 13, 17}, CountUpTo(18))
}
```
