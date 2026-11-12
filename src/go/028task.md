## task_id

```
Go/28
```

## prompt

```go

// Concatenate list of strings into a single string
// >>> Concatenate([])
// ''
// >>> Concatenate(['a', 'b', 'c'])
// 'abc'
func Concatenate(strings []string) string {
```

## declaration

```go
func Concatenate(strings []string) string {
```

## example_test

```go
func TestConcatenate(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("", Concatenate([]string{}))
    assert.Equal("abc", Concatenate([]string{"a", "b", "c"}))
}
```
