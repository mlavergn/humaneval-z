## task_id

```
Go/1
```

## prompt

```go

// Input to this function is a string containing multiple groups of nested parentheses. Your goal is to
// separate those group into separate strings and return the list of those.
// Separate groups are balanced (each open brace is properly closed) and not nested within each other
// Ignore any spaces in the input string.
// >>> SeparateParenGroups('( ) (( )) (( )( ))')
// ['()', '(())', '(()())']
func SeparateParenGroups(paren_string string) []string {
```

## declaration

```go
func SeparateParenGroups(paren_string string) []string {
```

## example_test

```go
func TestSeparateParenGroups(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"()", "(())", "(()())"}, SeparateParenGroups("( ) (( )) (( )( ))"))
}
```
