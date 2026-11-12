## task_id

```
Go/89
```

## prompt

```go
import (
    "strings"
)

// Create a function Encrypt that takes a string as an argument and
// returns a string Encrypted with the alphabet being rotated.
// The alphabet should be rotated in a manner such that the letters
// shift down by two multiplied to two places.
// For example:
// Encrypt('hi') returns 'lm'
// Encrypt('asdfghjkl') returns 'ewhjklnop'
// Encrypt('gf') returns 'kj'
// Encrypt('et') returns 'ix'
func Encrypt(s string) string {
```

## declaration

```go
func Encrypt(s string) string {
```

## example_test

```go
func TestEncrypt(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("lm", Encrypt("hi"))
    assert.Equal("ewhjklnop", Encrypt("asdfghjkl"))
    assert.Equal("kj", Encrypt("gf"))
    assert.Equal("ix", Encrypt("et"))
}
```
