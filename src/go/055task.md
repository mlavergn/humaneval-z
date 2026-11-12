## task_id

```
Go/55
```

## prompt

```go

// Return n-th Fibonacci number.
// >>> Fib(10)
// 55
// >>> Fib(1)
// 1
// >>> Fib(8)
// 21
func Fib(n int) int {
```

## declaration

```go
func Fib(n int) int {
```

## example_test

```go
func TestFib(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(55, Fib(10))
    assert.Equal(1, Fib(1))
    assert.Equal(21, Fib(8))
}
```
