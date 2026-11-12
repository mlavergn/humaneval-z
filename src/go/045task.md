## task_id

```
Go/45
```

## prompt

```go

// Given length of a side and high return area for a triangle.
// >>> TriangleArea(5, 3)
// 7.5
func TriangleArea(a float64, h float64) float64 {
```

## declaration

```go
func TriangleArea(a float64, h float64) float64 {
```

## example_test

```go
func TestTriangleArea(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(7.5, TriangleArea(5, 3))
}
```
