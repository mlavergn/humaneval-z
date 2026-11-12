## task_id

```
Go/130
```

## prompt

```go

// Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in
// the last couple centuries. However, what people don't know is Tribonacci sequence.
// Tribonacci sequence is defined by the recurrence:
// Tri(1) = 3
// Tri(n) = 1 + n / 2, if n is even.
// Tri(n) =  Tri(n - 1) + Tri(n - 2) + Tri(n + 1), if n is odd.
// For example:
// Tri(2) = 1 + (2 / 2) = 2
// Tri(4) = 3
// Tri(3) = Tri(2) + Tri(1) + Tri(4)
// = 2 + 3 + 3 = 8
// You are given a non-negative integer number n, you have to a return a list of the
// first n + 1 numbers of the Tribonacci sequence.
// Examples:
// Tri(3) = [1, 3, 2, 8]
func Tri(n int) []float64 {
```

## declaration

```go
func Tri(n int) []float64 {
```

## example_test

```go
func TestTri(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]float64{1, 3, 2.0, 8.0}, Tri(3))
}
```
