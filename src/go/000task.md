## task_id

```
Go/0
```

## prompt

```go
import (
    "math"
)

// Check if in given list of numbers, are any two numbers closer to each other than given threshold.
// >>> HasCloseElements([]float64{1.0, 2.0, 3.0}, 0.5)
// false
// >>> HasCloseElements([]float64{1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3)
// true
func HasCloseElements(numbers []float64, threshold float64) bool {
```

## declaration

```go
func HasCloseElements(numbers []float64, threshold float64) bool {
```

## example_test

```go
func TestHasCloseElements(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, HasCloseElements([]float64{1.0, 2.0, 3.0}, 0.5))
    assert.Equal(true, HasCloseElements([]float64{1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 0.3))
}
```
