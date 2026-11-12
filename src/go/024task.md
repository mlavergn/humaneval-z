## task_id

```
Go/24
```

## prompt

```go

// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> LargestDivisor(15)
// 5
func LargestDivisor(n int) int {
```

## declaration

```go
func LargestDivisor(n int) int {
```

## example_test

```go
func TestLargestDivisor(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(5, LargestDivisor(15))
}
```
