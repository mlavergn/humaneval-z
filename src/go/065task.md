## task_id

```
Go/65
```

## prompt

```go

// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> CircularShift(12, 1)
// "21"
// >>> CircularShift(12, 2)
// "12"
func CircularShift(x int,shift int) string {
```

## declaration

```go
func CircularShift(x int, shift int) string {
```

## example_test

```go
func TestCircularShift(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("12", CircularShift(12, 2))
    assert.Equal("21", CircularShift(12, 1))
}
```
