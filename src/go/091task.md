## task_id

```
Go/91
```

## prompt

```go
import (
    "regexp"
)

// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
// 
// For example:
// >>> IsBored("Hello world")
// 0
// >>> IsBored("The sky is blue. The sun is shining. I love this weather")
// 1
func IsBored(S string) int {
```

## declaration

```go
func IsBored(S string) int {
```

## example_test

```go
func TestIsBored(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0, IsBored("Hello world"), "Test 1")
    assert.Equal(1, IsBored("The sky is blue. The sun is shining. I love this weather"), "Test 3")
}
```
