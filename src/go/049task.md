## task_id

```
Go/49
```

## prompt

```go

// Return 2^n modulo p (be aware of numerics).
// >>> Modp(3, 5)
// 3
// >>> Modp(1101, 101)
// 2
// >>> Modp(0, 101)
// 1
// >>> Modp(3, 11)
// 8
// >>> Modp(100, 101)
// 1
func Modp(n int,p int) int {
```

## declaration

```go
func Modp(n int,p int) int {
```

## example_test

```go
func TestModp(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(3, Modp(3, 5))
    assert.Equal(2, Modp(1101, 101))
    assert.Equal(1, Modp(0, 101))
    assert.Equal(8, Modp(3, 11))
    assert.Equal(1, Modp(100, 101))
}
```
