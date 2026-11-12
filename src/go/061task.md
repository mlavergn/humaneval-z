## task_id

```
Go/61
```

## prompt

```go
import (
    "strings"
)

// brackets is a string of "(" and ")".
// return true if every opening bracket has a corresponding closing bracket.
// 
// >>> CorrectBracketing("(")
// false
// >>> CorrectBracketing("()")
// true
// >>> CorrectBracketing("(()())")
// true
// >>> CorrectBracketing(")(()")
// false
func CorrectBracketing(brackets string) bool {
```

## declaration

```go
func CorrectBracketing(brackets string) bool {
```

## example_test

```go
func TestCorrectBracketing(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, CorrectBracketing("()"))
    assert.Equal(true, CorrectBracketing("(()())"))
    assert.Equal(false, CorrectBracketing(")(()"))
    assert.Equal(false, CorrectBracketing("("))
}
```
