## task_id

```
Go/132
```

## prompt

```go

// Create a function that takes a string as input which contains only square brackets.
// The function should return true if and only if there is a valid subsequence of brackets
// where at least one bracket in the subsequence is nested.
// 
// IsNested('[[]]') ➞ true
// IsNested('[]]]]]]][[[[[]') ➞ false
// IsNested('[][]') ➞ false
// IsNested('[]') ➞ false
// IsNested('[[][]]') ➞ true
// IsNested('[[]][[') ➞ true
func IsNested(s string) bool {
```

## declaration

```go
func IsNested(s string) bool {
```

## example_test

```go
func TestIsNested(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, IsNested("[[]]"))
    assert.Equal(false, IsNested("[]]]]]]][[[[[]"))
    assert.Equal(false, IsNested("[][]"))
    assert.Equal(false, IsNested("'[]'"))
    assert.Equal(true, IsNested("[[]][["))
    assert.Equal(true, IsNested("[[][]]"))
}
```
