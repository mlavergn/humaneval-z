## task_id

```
Go/22
```

## prompt

```go
// Filter given list of any values only for integers
// >>> FilterIntegers(['a', 3.14, 5])
// [5]
// >>> FilterIntegers([1, 2, 3, 'abc', {}, []])
// [1, 2, 3]
func FilterIntegers(values []interface{}) []int {
```

## declaration

```go
func FilterIntegers(values []interface{}) []int {
```

## example_test

```go
func TestFilterIntegers(t *testing.T) {
    assert := assert.New(t)
    assert.Equal([]int{5}, FilterIntegers([]interface{}{'a', 3.14, 5}))
    assert.Equal([]int{1,2,3}, FilterIntegers([]interface{}{1,2,3,"abc", nil, []interface{}{}}))
}
```
