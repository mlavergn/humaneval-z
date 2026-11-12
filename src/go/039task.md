## task_id

```
Go/39
```

## prompt

```go
import (
	"math"
)

// PrimeFib returns n-th number that is a Fibonacci number and it's also prime.
// >>> PrimeFib(1)
// 2
// >>> PrimeFib(2)
// 3
// >>> PrimeFib(3)
// 5
// >>> PrimeFib(4)
// 13
// >>> PrimeFib(5)
// 89
func PrimeFib(n int) int {
```

## declaration

```go
func PrimeFib(n int) int {
```

## example_test

```go
func TestPrimeFib(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(2, PrimeFib(1))
    assert.Equal(3, PrimeFib(2))
    assert.Equal(5, PrimeFib(3))
    assert.Equal(13, PrimeFib(4))
    assert.Equal(89, PrimeFib(5))
}
```
