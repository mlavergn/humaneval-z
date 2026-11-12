## task_id

```
Go/25
```

## prompt

```go
import (
    "math"
)

// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> Factorize(8)
// [2, 2, 2]
// >>> Factorize(25)
// [5, 5]
// >>> Factorize(70)
// [2, 5, 7]
func Factorize(n int) []int {
```

## declaration

```go
func Factorize(n int) []int {
```

## example_test

```go
func TestFactorize(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 2, 2}, Factorize(8))
    assert.Equal([]int{5,5}, Factorize(25))
    assert.Equal([]int{2,5,7}, Factorize(70))
}
```
