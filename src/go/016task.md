## task_id

```
Go/16
```

## prompt

```go
import (
    "strings"
)

// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> CountDistinctCharacters('xyzXYZ')
// 3
// >>> CountDistinctCharacters('Jerry')
// 4
func CountDistinctCharacters(str string) int{
```

## declaration

```go
func CountDistinctCharacters(str string) int{
```

## example_test

```go
func TestCountDistinctCharacters(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(3, CountDistinctCharacters("xyzXYZ"))
    assert.Equal(4, CountDistinctCharacters("Jerry"))
}
```
