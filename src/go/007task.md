## task_id

```
Go/7
```

## prompt

```go
import (
    "strings"
)

// Filter an input list of strings only for ones that contain given substring
// >>> FilterBySubstring([], 'a')
// []
// >>> FilterBySubstring(['abc', 'bacd', 'cde', 'array'], 'a')
// ['abc', 'bacd', 'array']
func FilterBySubstring(stringList []string, substring string) []string {
```

## declaration

```go
func FilterBySubstring(stringList []string, substring string) []string {
```

## example_test

```go
func TestFilterBySubstring(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{}, FilterBySubstring([]string{}, "a"))
    assert.Equal([]string{"abc", "bacd", "array"}, FilterBySubstring([]string{"abc", "bacd", "cde", "array"}, "a"))
}
```
