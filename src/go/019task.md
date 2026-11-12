## task_id

```
Go/19
```

## prompt

```go
import (
    "sort"
    "strings"
)

// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> SortNumbers('three one five')
// 'one three five'
func SortNumbers(numbers string) string{
```

## declaration

```go
func SortNumbers(numbers string) string{
```

## example_test

```go
func TestSortNumbers(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("one three five", SortNumbers("three one five"))
}
```
