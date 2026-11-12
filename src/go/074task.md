## task_id

```
Go/74
```

## prompt

```go

// Write a function that accepts two lists of strings and returns the list that has
// total number of chars in the all strings of the list less than the other list.
// 
// if the two lists have the same number of chars, return the first list.
// 
// Examples
// TotalMatch([], []) ➞ []
// TotalMatch(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// TotalMatch(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// TotalMatch(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// TotalMatch(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
func TotalMatch(lst1 []string,lst2 []string) []string {
```

## declaration

```go
func TotalMatch(lst1 []string,lst2 []string) []string {
```

## example_test

```go
func TestTotalMatch(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]string{}, TotalMatch([]string{}, []string{}))
    assert.Equal([]string{"hi", "admin"}, TotalMatch([]string{"hi", "admin"}, []string{"hi", "hi", "admin", "project"}))
    assert.Equal([]string{"4"}, TotalMatch([]string{"4"},[]string{"1", "2", "3", "4", "5"}))
    assert.Equal([]string{"hI", "Hi"}, TotalMatch([]string{"hi", "admin"}, []string{"hI", "Hi"}))
    assert.Equal([]string{"hI", "hi", "hi"}, TotalMatch([]string{"hi", "admin"}, []string{"hI", "hi", "hi"}))
}
```
