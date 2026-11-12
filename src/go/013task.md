## task_id

```
Go/13
```

## prompt

```go

// Return a greatest common divisor of two integers a and b
// >>> GreatestCommonDivisor(3, 5)
// 1
// >>> GreatestCommonDivisor(25, 15)
// 5
func GreatestCommonDivisor(a int,b int) int{
```

## declaration

```go
func GreatestCommonDivisor(a int,b int) int{
```

## example_test

```go
func TestGreatestCommonDivisor(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(1, GreatestCommonDivisor(3, 5))
    assert.Equal(5, GreatestCommonDivisor(25, 15))
}
```
