## task_id

```
Go/149
```

## prompt

```go
import (
    "sort"
)

// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
func SortedListSum(lst []string) []string {
```

## declaration

```go
func SortedListSum(lst []string) []string {
```

## example_test

```go
func TestSortedListSum(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{"aa"}, SortedListSum([]string{"aa", "a", "aaa"}))
    assert.Equal([]string{"ab", "cd"}, SortedListSum([]string{"ab", "a", "aaa", "cd"}))
}
```
