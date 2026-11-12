## task_id

```
Go/52
```

## prompt

```go

// Return true if all numbers in the list l are below threshold t.
// >>> BelowThreshold([1, 2, 4, 10], 100)
// true
// >>> BelowThreshold([1, 20, 4, 10], 5)
// false
func BelowThreshold(l []int,t int) bool {
```

## declaration

```go
func BelowThreshold(l []int,t int) bool {
```

## example_test

```go
func TestBelowThreshold(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, BelowThreshold([]int{1, 2, 4, 10}, 100))
    assert.Equal(false, BelowThreshold([]int{1, 20, 4, 10}, 5))
}
```
