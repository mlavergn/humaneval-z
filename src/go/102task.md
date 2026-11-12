## task_id

```
Go/102
```

## prompt

```go

// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If
// there's no such number, then the function should return -1.
// 
// For example:
// ChooseNum(12, 15) = 14
// ChooseNum(13, 12) = -1
func ChooseNum(x, y int) int {
```

## declaration

```go
func ChooseNum(x, y int) int {
```

## example_test

```go
func TestChooseNum(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(14, ChooseNum(12,15))
    assert.Equal(-1, ChooseNum(13,12))
}
```
