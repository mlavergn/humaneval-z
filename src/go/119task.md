## task_id

```
Go/119
```

## prompt

```go

// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
// 
// Examples:
// MatchParens(['()(', ')']) == 'Yes'
// MatchParens([')', ')']) == 'No'
func MatchParens(lst []string) string {
```

## declaration

```go
func MatchParens(lst []string) string {
```

## example_test

```go
func TestMatchParens(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("Yes", MatchParens([]string{"()(", ")"}))
    assert.Equal("No", MatchParens([]string{")", ")"}))
}
```
