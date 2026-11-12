## task_id

```
Go/31
```

## prompt

```go

// Return true if a given number is prime, and false otherwise.
// >>> IsPrime(6)
// false
// >>> IsPrime(101)
// true
// >>> IsPrime(11)
// true
// >>> IsPrime(13441)
// true
// >>> IsPrime(61)
// true
// >>> IsPrime(4)
// false
// >>> IsPrime(1)
// false
func IsPrime(n int) bool {
```

## declaration

```go
func IsPrime(n int) bool {
```

## example_test

```go
func TestIsPrime(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, IsPrime(6))
    assert.Equal(true, IsPrime(101))
    assert.Equal(true, IsPrime(11))
    assert.Equal(true, IsPrime(13441))
    assert.Equal(true, IsPrime(61))
    assert.Equal(false, IsPrime(4))
    assert.Equal(false, IsPrime(1))
}
```
