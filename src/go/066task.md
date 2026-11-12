## task_id

```
Go/66
```

## prompt

```go

// Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
// 
// Examples:
// Digitsum("") => 0
// Digitsum("abAB") => 131
// Digitsum("abcCd") => 67
// Digitsum("helloE") => 69
// Digitsum("woArBld") => 131
// Digitsum("aAaaaXa") => 153
func Digitsum(x string) int {
```

## declaration

```go
func Digitsum(x string) int {
```

## example_test

```go
func TestDigitSum(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0, Digitsum(""))
    assert.Equal(131, Digitsum("abAB"))
    assert.Equal(67, Digitsum("abcCd"))
    assert.Equal(69, Digitsum("helloE"))
    assert.Equal(131, Digitsum("woArBld"))
    assert.Equal(153, Digitsum("aAaaaXa"))
}
```
