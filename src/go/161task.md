## task_id

```
Go/161
```

## prompt

```go

// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa,
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// Solve("1234") = "4321"
// Solve("ab") = "AB"
// Solve("#a@C") = "#A@c"
func Solve(s string) string {
```

## declaration

```go
func Solve(s string) string {
```

## example_test

```go
func TestSolve(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("4321", Solve("1234"))
    assert.Equal("AB", Solve("ab"))
    assert.Equal("#A@c", Solve("#a@C"))
}
```
