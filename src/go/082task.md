## task_id

```
Go/82
```

## prompt

```go

// Write a function that takes a string and returns true if the string
// length is a prime number or false otherwise
// Examples
// PrimeLength('Hello') == true
// PrimeLength('abcdcba') == true
// PrimeLength('kittens') == true
// PrimeLength('orange') == false
func PrimeLength(s string) bool {
```

## declaration

```go
func PrimeLength(s string) bool {
```

## example_test

```go
func TestPrimeLength(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, PrimeLength("Hello"))
    assert.Equal(true, PrimeLength("abcdcba"))
    assert.Equal(true, PrimeLength("kittens"))
    assert.Equal(false, PrimeLength("orange"))
}
```
