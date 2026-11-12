## task_id

```
Go/2
```

## prompt

```go
import (
    "math"
)

// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
// 
// Return the decimal part of the number.
// >>> TruncateNumber(3.5)
// 0.5
func TruncateNumber(number float64) float64 {
```

## declaration

```go
func TruncateNumber(number float64) float64 {
```

## example_test

```go
func TestTruncateNumber(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0.5, TruncateNumber(3.5))
}
```
