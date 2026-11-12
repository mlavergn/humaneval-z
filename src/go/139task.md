## task_id

```
Go/139
```

## prompt

```go

// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
// 
// For example:
// >>> SpecialFactorial(4)
// 288
// 
// The function will receive an integer as input and should return the special
// factorial of this integer.
func SpecialFactorial(n int) int {
```

## declaration

```go
func SpecialFactorial(n int) int {
```

## example_test

```go
func TestSpecialFactorial(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(288, SpecialFactorial(4))
}
```
