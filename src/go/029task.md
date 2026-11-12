## task_id

```
Go/29
```

## prompt

```go

// Filter an input list of strings only for ones that start with a given prefix.
// >>> FilterByPrefix([], 'a')
// []
// >>> FilterByPrefix(['abc', 'bcd', 'cde', 'array'], 'a')
// ['abc', 'array']
func FilterByPrefix(strings []string,prefix string) []string {
```

## declaration

```go
func FilterByPrefix(strings []string,prefix string) []string {
```

## example_test

```go
func TestFilterByPrefix(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{}, FilterByPrefix([]string{}, "a"))
    assert.Equal([]string{"abc", "array"}, FilterByPrefix([]string{"abc", "bcd", "cde", "array"}, "a"))
}
```
