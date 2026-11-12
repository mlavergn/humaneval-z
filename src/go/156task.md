## task_id

```
Go/156
```

## prompt

```go
import (
    "strings"
)

// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
// 
// Examples:
// >>> IntToMiniRoman(19) == 'xix'
// >>> IntToMiniRoman(152) == 'clii'
// >>> IntToMiniRoman(426) == 'cdxxvi'
func IntToMiniRoman(number int) string {
```

## declaration

```go
func IntToMiniRoman(number int) string {
```

## example_test

```go
func TestIntToMiniRoman(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("xix", IntToMiniRoman(19))
    assert.Equal("clii", IntToMiniRoman(152))
    assert.Equal("cdxxvi", IntToMiniRoman(426))
}
```
