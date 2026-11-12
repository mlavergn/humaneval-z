## task_id

```
Go/54
```

## prompt

```go

// Check if two words have the same characters.
// >>> SameChars('eabcdzzzz', 'dddzzzzzzzddeddabc')
// true
// >>> SameChars('abcd', 'dddddddabc')
// true
// >>> SameChars('dddddddabc', 'abcd')
// true
// >>> SameChars('eabcd', 'dddddddabc')
// false
// >>> SameChars('abcd', 'dddddddabce')
// false
// >>> SameChars('eabcdzzzz', 'dddzzzzzzzddddabc')
// false
func SameChars(s0 string, s1 string) bool {
```

## declaration

```go
func SameChars(s0 string, s1 string) bool {
```

## example_test

```go
func TestSameChars(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, SameChars("eabcdzzzz", "dddzzzzzzzddeddabc"))
    assert.Equal(true, SameChars("abcd", "dddddddabc"))
    assert.Equal(true, SameChars("dddddddabc", "abcd"))
    assert.Equal(false, SameChars("eabcd", "dddddddabc"))
    assert.Equal(false, SameChars("abcd", "dddddddabcf"))
    assert.Equal(false, SameChars("eabcdzzzz", "dddzzzzzzzddddabc"))
}
```
