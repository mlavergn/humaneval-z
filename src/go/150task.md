## task_id

```
Go/150
```

## prompt

```go

// A simple program which should return the value of x if n is
// a prime number and should return the value of y otherwise.
// 
// Examples:
// for XOrY(7, 34, 12) == 34
// for XOrY(15, 8, 5) == 5
func XOrY(n, x, y int) int {
```

## declaration

```go
func XOrY(n, x, y int) int {
```

## example_test

```go
func TestXOrY(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(34, XOrY(7, 34, 12))
    assert.Equal(5, XOrY(15, 8, 5))
}
```
