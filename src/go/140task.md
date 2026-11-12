## task_id

```
Go/140
```

## prompt

```go

// Given a string text, replace all spaces in it with underscores,
// and if a string has more than 2 consecutive spaces,
// then replace all consecutive spaces with -
// 
// FixSpaces("Example") == "Example"
// FixSpaces("Example 1") == "Example_1"
// FixSpaces(" Example 2") == "_Example_2"
// FixSpaces(" Example   3") == "_Example-3"
func FixSpaces(text string) string {
```

## declaration

```go
func FixSpaces(text string) string {
```

## example_test

```go
func TestFixSpaces(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("Example", FixSpaces("Example"))
    assert.Equal("Example_1", FixSpaces("Example 1"))
    assert.Equal("_Example_2", FixSpaces(" Example 2"))
    assert.Equal("_Example-3", FixSpaces(" Example   3"))
}
```
