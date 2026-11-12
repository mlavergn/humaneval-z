## task_id

```
Go/44
```

## prompt

```go
import (
    "strconv"
)

// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> ChangeBase(8, 3)
// '22'
// >>> ChangeBase(8, 2)
// '1000'
// >>> ChangeBase(7, 2)
// '111'
func ChangeBase(x int, base int) string {
```

## declaration

```go
func ChangeBase(x int, base int) string {
```

## example_test

```go
func TestChangeBase(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("22", ChangeBase(8, 3))
    assert.Equal("1000", ChangeBase(8, 2))
    assert.Equal("111", ChangeBase(7, 2))
}
```
