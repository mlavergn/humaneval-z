## task_id

```
Go/162
```

## prompt

```go
import (
    "crypto/md5"
    "fmt"
)

// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return nil.
// 
// >>> StringToMd5('Hello world') == '3e25960a79dbc69b674cd4ec67a72c62'
func StringToMd5(text string) interface{} {
```

## declaration

```go
func StringToMd5(text string) interface{} {
```

## example_test

```go
func TestStringToMd5(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("3e25960a79dbc69b674cd4ec67a72c62", StringToMd5("Hello world"))
}
```
