## task_id

```
Go/18
```

## prompt

```go

// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> HowManyTimes('', 'a')
// 0
// >>> HowManyTimes('aaa', 'a')
// 3
// >>> HowManyTimes('aaaa', 'aa')
// 3
func HowManyTimes(str string,substring string) int{
```

## declaration

```go
func HowManyTimes(str string,substring string) int{
```

## example_test

```go
func TestHowManyTimes(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0, HowManyTimes("", "a"))
    assert.Equal(3, HowManyTimes("aaa", "a"))
    assert.Equal(3, HowManyTimes("aaaa", "aa"))
}
```
