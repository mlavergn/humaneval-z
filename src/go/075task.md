## task_id

```
Go/75
```

## prompt

```go

// Write a function that returns true if the given number is the multiplication of 3 prime numbers
// and false otherwise.
// Knowing that (a) is less then 100.
// Example:
// IsMultiplyPrime(30) == true
// 30 = 2 * 3 * 5
func IsMultiplyPrime(a int) bool {
```

## declaration

```go
func IsMultiplyPrime(a int) bool {
```

## example_test

```go
func TestIsMultiplyPrime(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, IsMultiplyPrime(30))
}
```
