## task_id

```
Go/6
```

## prompt

```go
import (
    "math"
    "strings"
)

// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
// 
// >>> ParseNestedParens('(()()) ((())) () ((())()())')
// [2, 3, 1, 3]
func ParseNestedParens(paren_string string) []int {
```

## declaration

```go
func ParseNestedParens(paren_string string) []int {
```

## example_test

```go
func TestParseNestedParens(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{2, 3, 1, 3}, ParseNestedParens("(()()) ((())) () ((())()())"))
}
```
