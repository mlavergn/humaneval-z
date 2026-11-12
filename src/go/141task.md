## task_id

```
Go/141
```

## prompt

```go
import (
    "strings"
)

// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// FileNameCheck("example.txt") # => 'Yes'
// FileNameCheck("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
func FileNameCheck(file_name string) string {
```

## declaration

```go
func FileNameCheck(file_name string) string {
```

## example_test

```go
func TestFileNameCheck(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("Yes", FileNameCheck("example.txt"))
    assert.Equal("No", FileNameCheck("1example.dll"))
}
```
