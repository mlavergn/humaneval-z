## task_id

```
Go/138
```

## prompt

```go

// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// IsEqualToSumEven(4) == false
// IsEqualToSumEven(6) == false
// IsEqualToSumEven(8) == true
func IsEqualToSumEven(n int) bool {
```

## declaration

```go
func IsEqualToSumEven(n int) bool {
```

## example_test

```go
func TestIsEqualToSumEven(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, IsEqualToSumEven(4))
    assert.Equal(false, IsEqualToSumEven(6))
    assert.Equal(true, IsEqualToSumEven(8))
}
```
