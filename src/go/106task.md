## task_id

```
Go/106
```

## prompt

```go
 
// Implement the Function F that takes n as a parameter,
// and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
// or the sum of numbers from 1 to i otherwise.
// i starts from 1.
// the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
// Example:
// F(5) == [1, 2, 6, 24, 15]
func F(n int) []int {
```

## declaration

```go
func F(n int) []int {
```

## example_test

```go
func TestF(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{1, 2, 6, 24, 15}, F(5))
}
```
