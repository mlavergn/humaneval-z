## task_id

```
Go/163
```

## prompt

```go

// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
// 
// For example:
// GenerateIntegers(2, 8) => [2, 4, 6, 8]
// GenerateIntegers(8, 2) => [2, 4, 6, 8]
// GenerateIntegers(10, 14) => []
func GenerateIntegers(a, b int) []int {
```

## declaration

```go
func GenerateIntegers(a, b int) []int {
```

## example_test

```go
func TestGenerateIntegers(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 4, 6, 8}, GenerateIntegers(2, 8))
    assert.Equal([]int{2, 4, 6, 8}, GenerateIntegers(8, 2))
    assert.Equal([]int{}, GenerateIntegers(10, 14))
}
```
