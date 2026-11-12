## task_id

```
Go/71
```

## prompt

```go
import (
    "math"
)

// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle.
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater
// than the third side.
// Example:
// TriangleArea(3, 4, 5) == 6.00
// TriangleArea(1, 2, 10) == -1
func TriangleArea(a float64, b float64, c float64) interface{} {
```

## declaration

```go
func TriangleArea(a float64, b float64, c float64) interface{} {
```

## example_test

```go
func TestTriangleArea(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(6.00, TriangleArea(3, 4, 5))
    assert.Equal(-1, TriangleArea(1, 2, 10))
}
```
