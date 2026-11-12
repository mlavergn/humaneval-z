## task_id

```
Go/118
```

## prompt

```go
import (
    "bytes"
)

// You are given a word. Your task is to find the closest vowel that stands between
// two consonants from the right side of the word (case sensitive).
// 
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition.
// 
// You may assume that the given string contains English letter only.
// 
// Example:
// GetClosestVowel("yogurt") ==> "u"
// GetClosestVowel("FULL") ==> "U"
// GetClosestVowel("quick") ==> ""
// GetClosestVowel("ab") ==> ""
func GetClosestVowel(word string) string {
```

## declaration

```go
func GetClosestVowel(word string) string {
```

## example_test

```go
func TestGetClosestVowel(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("u", GetClosestVowel("yogurt"))
    assert.Equal("U", GetClosestVowel("FULL"))
    assert.Equal("", GetClosestVowel("ab"))
    assert.Equal("", GetClosestVowel("quick"))
}
```
