## task_id

```
Go/27
```

## prompt

```go
import (
    "strings"
)

// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> FlipCase('Hello')
// 'hELLO'
func FlipCase(str string) string {
```

## declaration

```go
func FlipCase(str string) string {
```

## example_test

```go
func TestFlipCase(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("hELLO", FlipCase("Hello"))
}
```
