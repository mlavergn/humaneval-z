## task_id

```
Go/3
```

## prompt

```go

// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return true. Otherwise it should return false.
// >>> BelowZero([1, 2, 3])
// false
// >>> BelowZero([1, 2, -4, 5])
// true
func BelowZero(operations []int) bool {
```

## declaration

```go
func BelowZero(operations []int) bool {
```

## example_test

```go
func TestBelowZero(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(false, BelowZero([]int{1, 2, 3}))
    assert.Equal(true, BelowZero([]int{1, 2, -4, 5}))
}
```
