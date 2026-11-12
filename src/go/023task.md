## task_id

```
Go/23
```

## prompt

```go

// Return length of given string
// >>> Strlen('')
// 0
// >>> Strlen('abc')
// 3
func Strlen(str string) int {
```

## declaration

```go
func Strlen(str string) int {
```

## example_test

```go
func TestStrlen(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0, Strlen(""))
    assert.Equal(3, Strlen("abc"))
}
```
