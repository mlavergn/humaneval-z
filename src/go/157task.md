## task_id

```
Go/157
```

## prompt

```go

// Given the lengths of the three sides of a triangle. Return true if the three
// sides form a right-angled triangle, false otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or
// 90 degree.
// Example:
// RightAngleTriangle(3, 4, 5) == true
// RightAngleTriangle(1, 2, 3) == false
func RightAngleTriangle(a, b, c int) bool {
```

## declaration

```go
func RightAngleTriangle(a, b, c int) bool {
```

## example_test

```go
func TestRightAngleTriangle(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, RightAngleTriangle(3, 4, 5))
    assert.Equal(false, RightAngleTriangle(1, 2, 3))
}
```
