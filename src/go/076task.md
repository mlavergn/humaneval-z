## task_id

```
Go/76
```

## prompt

```go

// Your task is to write a function that returns true if a number x is a simple
// power of n and false in other cases.
// x is a simple power of n if n**int=x
// For example:
// IsSimplePower(1, 4) => true
// IsSimplePower(2, 2) => true
// IsSimplePower(8, 2) => true
// IsSimplePower(3, 2) => false
// IsSimplePower(3, 1) => false
// IsSimplePower(5, 3) => false
func IsSimplePower(x int,n int) bool {
```

## declaration

```go
func IsSimplePower(x int,n int) bool {
```

## example_test

```go
func TestIsSimplePower(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, IsSimplePower(1, 4))
    assert.Equal(true, IsSimplePower(2, 2))
    assert.Equal(true, IsSimplePower(8, 2))
    assert.Equal(false, IsSimplePower(3, 2))
    assert.Equal(false, IsSimplePower(3, 1))
    assert.Equal(false, IsSimplePower(5, 3))
}
```
