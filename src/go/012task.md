## task_id

```
Go/12
```

## prompt

```go
// Out of list of strings, return the Longest one. Return the first one in case of multiple
// strings of the same length. Return nil in case the input list is empty.
// >>> Longest([])
// nil
// >>> Longest(['a', 'b', 'c'])
// 'a'
// >>> Longest(['a', 'bb', 'ccc'])
// 'ccc'
func Longest(strings []string) interface{}{
```

## declaration

```go
func Longest(strings []string) interface{}{
```

## example_test

```go
func TestLongest(t *testing.T) {
	assert := assert.New(t)
	assert.Equal(nil, Longest([]string{}))
	assert.Equal("a", Longest([]string{"a", "b", "c"}))
	assert.Equal("ccc", Longest([]string{"a", "bb", "ccc"}))
}
```
