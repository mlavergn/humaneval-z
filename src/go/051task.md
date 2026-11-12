## task_id

```
Go/51
```

## prompt

```go
import (
    "regexp"
)

// RemoveVowels is a function that takes string and returns string without vowels.
// >>> RemoveVowels('')
// ''
// >>> RemoveVowels("abcdef\nghijklm")
// 'bcdf\nghjklm'
// >>> RemoveVowels('abcdef')
// 'bcdf'
// >>> RemoveVowels('aaaaa')
// ''
// >>> RemoveVowels('aaBAA')
// 'B'
// >>> RemoveVowels('zbcd')
// 'zbcd'
func RemoveVowels(text string) string {
```

## declaration

```go
func RemoveVowels(text string) string {
    
```

## example_test

```go
func TestRemoveVowels(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("", RemoveVowels(""))
    assert.Equal("bcdf\nghjklm", RemoveVowels("abcdef\nghijklm"))
    assert.Equal("bcdf", RemoveVowels("abcdef"))
    assert.Equal("", RemoveVowels("aaaaa"))
    assert.Equal("B", RemoveVowels("aaBAA"))
    assert.Equal("zbcd", RemoveVowels("zbcd"))
}
```
