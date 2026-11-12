## task_id

```
Go/21
```

## prompt

```go

// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> RescaleToUnit([1.0, 2.0, 3.0, 4.0, 5.0])
// [0.0, 0.25, 0.5, 0.75, 1.0]
func RescaleToUnit(numbers []float64) []float64 {
```

## declaration

```go
func RescaleToUnit(numbers []float64) []float64 {
```

## example_test

```go
func TestRescaleToUnit(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]float64{0.0, 0.25, 0.5, 0.75, 1.0}, RescaleToUnit([]float64{1.0, 2.0, 3.0, 4.0, 5.0}))
}
```
