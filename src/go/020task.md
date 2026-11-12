## task_id

```
Go/20
```

## prompt

```go

// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> FindClosestElements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
// (2.0, 2.2)
// >>> FindClosestElements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
// (2.0, 2.0)
func FindClosestElements(numbers []float64) [2]float64 {
```

## declaration

```go
func FindClosestElements(numbers []float64) [2]float64 {
```

## example_test

```go
func TestFindClosestElements(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([2]float64{2.0, 2.2}, FindClosestElements([]float64{1.0, 2.0, 3.0, 4.0, 5.0, 2.2}))
    assert.Equal([2]float64{2.0, 2.0}, FindClosestElements([]float64{1.0, 2.0, 3.0, 4.0, 5.0, 2.0}))
}
```
