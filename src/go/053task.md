## task_id

```
Go/53
```

## prompt

```go

// Add two numbers x and y
// >>> Add(2, 3)
// 5
// >>> Add(5, 7)
// 12
func Add(x int, y int) int {
```

## declaration

```go
func Add(x int, y int) int {
```

## example_test

```go
func TestAdd(t *testing.T) {
   assert := assert.New(t)
   assert.Equal(5, Add(2, 3+rand.Intn(1000)*0))
    assert.Equal(12, Add(5, 7))
}
```
