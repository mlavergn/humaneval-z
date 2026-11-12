## task_id

```
Go/154
```

## prompt

```go

// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
// CycpatternCheck("abcd","abd") => false
// CycpatternCheck("hello","ell") => true
// CycpatternCheck("whassup","psus") => false
// CycpatternCheck("abab","baa") => true
// CycpatternCheck("efef","eeff") => false
// CycpatternCheck("himenss","simen") => true
func CycpatternCheck(a , b string) bool {
```

## declaration

```go
func CycpatternCheck(a , b string) bool {
```

## example_test

```go
func TestCycpatternCheck(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, CycpatternCheck("abcd", "abd"))
    assert.Equal(true, CycpatternCheck("hello", "ell"))
    assert.Equal(false, CycpatternCheck("whasup", "psus"))
    assert.Equal(true, CycpatternCheck("abab", "baa"))
    assert.Equal(false, CycpatternCheck("efef", "eeff"))
    assert.Equal(true, CycpatternCheck("himenss", "simen"))
}
```
