## task_id

```
Go/4
```

## prompt

```go
import (
    "math"
)

// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> MeanAbsoluteDeviation([1.0, 2.0, 3.0, 4.0])
// 1.0
func MeanAbsoluteDeviation(numbers []float64) float64 {
```

## declaration

```go
func MeanAbsoluteDeviation(numbers []float64) float64 {
```

## example_test

```go
func TestMeanAbsoluteDeviation(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, math.Abs(MeanAbsoluteDeviation([]float64{1.0, 2.0, 3.0, 4.0})-1.0) < 1e-6)
}
```
