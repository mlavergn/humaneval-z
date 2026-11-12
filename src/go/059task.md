## task_id

```
Go/59
```

## prompt

```go

// Return the largest prime factor of n. Assume n > 1 and is not a prime.
// >>> LargestPrimeFactor(13195)
// 29
// >>> LargestPrimeFactor(2048)
// 2
func LargestPrimeFactor(n int) int {
```

## declaration

```go
func LargestPrimeFactor(n int) int {
```

## example_test

```go
func TestLargestPrimeFactor(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2, LargestPrimeFactor(2048))
    assert.Equal(29, LargestPrimeFactor(13195))
}
```
