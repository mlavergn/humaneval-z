## task_id

```
Go/142
```

## prompt

```go
import (
    "math"
)

// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries.
// 
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
func SumSquares(lst []int) int {
```

## declaration

```go
func SumSquares(lst []int) int {
```

## example_test

```go
func TestSumSquares(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(6, SumSquares([]int{1,2,3}))
    assert.Equal(0, SumSquares([]int{}))
    assert.Equal(-126, SumSquares([]int{-1,-5,2,-1,-5}))
}
```
