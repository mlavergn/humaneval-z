## task_id

```
Go/95
```

## prompt

```go
import (
    "strings"
)

// Given a dictionary, return true if all keys are strings in lower
// case or all keys are strings in upper case, else return false.
// The function should return false is the given dictionary is empty.
// Examples:
// CheckDictCase({"a":"apple", "b":"banana"}) should return true.
// CheckDictCase({"a":"apple", "A":"banana", "B":"banana"}) should return false.
// CheckDictCase({"a":"apple", 8:"banana", "a":"apple"}) should return false.
// CheckDictCase({"Name":"John", "Age":"36", "City":"Houston"}) should return false.
// CheckDictCase({"STATE":"NC", "ZIP":"12345" }) should return true.
func CheckDictCase(dict map[interface{}]interface{}) bool {
```

## declaration

```go
func CheckDictCase(dict map[interface{}]interface{}) bool {
```

## example_test

```go
func TestCheckDictCase(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, CheckDictCase(map[interface{}]interface{}{"p": "pineapple", "b": "banana"}))
    assert.Equal(false, CheckDictCase(map[interface{}]interface{}{"p": "pineapple", "A": "banana", "B": "banana"}))
    assert.Equal(false, CheckDictCase(map[interface{}]interface{}{"p": "pineapple", 8: "banana", "a": "apple"}))
    assert.Equal(false, CheckDictCase(map[interface{}]interface{}{"Name": "John", "Age": "36", "City": "Houston"}))
    assert.Equal(true, CheckDictCase(map[interface{}]interface{}{"STATE": "NC", "ZIP": "12345"}))
}
```
