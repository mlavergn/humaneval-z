## task_id

```
Go/80
```

## prompt

```go

// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// IsHappy(a) => false
// IsHappy(aa) => false
// IsHappy(abcd) => true
// IsHappy(aabb) => false
// IsHappy(adb) => true
// IsHappy(xyy) => false
func IsHappy(s string) bool {
```

## declaration

```go
func IsHappy(s string) bool {
```

## example_test

```go
func TestIsHappy(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, IsHappy("a"), "a")
    assert.Equal(false, IsHappy("aa"), "aa")
    assert.Equal(true, IsHappy("abcd"), "abcd")
    assert.Equal(false, IsHappy("aabb"), "aabb")
    assert.Equal(true, IsHappy("adb"), "adb")
    assert.Equal(false, IsHappy("xyy"), "xyy")
}
```
