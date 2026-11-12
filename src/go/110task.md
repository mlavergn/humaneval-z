## task_id

```
Go/110
```

## prompt

```go

// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an Exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of Exchanged elements between lst1 and lst2.
// If it is possible to Exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// Exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// Exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
func Exchange(lst1, lst2 []int) string {
```

## declaration

```go
func Exchange(lst1, lst2 []int) string {
```

## example_test

```go
func TestExchange(t *testing.T) {
    assert := assert.New(t)
    assert.Equal("YES", Exchange([]int{1, 2, 3, 4}, []int{1, 2, 3, 4}))
    assert.Equal("NO", Exchange([]int{1, 2, 3, 4}, []int{1, 5, 3, 4}))
}
```
