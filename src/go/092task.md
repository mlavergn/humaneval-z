## task_id

```
Go/92
```

## prompt

```go

// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
// 
// Examples
// AnyInt(5, 2, 7) ➞ true
// 
// AnyInt(3, 2, 2) ➞ false
// 
// AnyInt(3, -2, 1) ➞ true
// 
// AnyInt(3.6, -2.2, 2) ➞ false
func AnyInt(x, y, z interface{}) bool {
```

## declaration

```go
func AnyInt(x, y, z interface{}) bool {
```

## example_test

```go
func TestAnyInt(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, AnyInt(5, 2, 7))
    assert.Equal(false, AnyInt(3, 2, 2))
    assert.Equal(true, AnyInt(3, -2, 1))
    assert.Equal(false, AnyInt(3.6, -2.2, 2))
}
```
