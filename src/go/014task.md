## task_id

```
Go/14
```

## prompt

```go

// Return list of all prefixes from shortest to longest of the input string
// >>> AllPrefixes('abc')
// ['a', 'ab', 'abc']
func AllPrefixes(str string) []string{
```

## declaration

```go
func AllPrefixes(str string) []string{
```

## example_test

```go
func TestAllPrefixes(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"a", "ab", "abc"}, AllPrefixes("abc"))
}
```
