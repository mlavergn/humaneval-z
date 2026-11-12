## task_id

```
Go/36
```

## prompt

```go
import (
	"strconv"
	"strings"
)

// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> FizzBuzz(50)
// 0
// >>> FizzBuzz(78)
// 2
// >>> FizzBuzz(79)
// 3
func FizzBuzz(n int) int {
```

## declaration

```go
func FizzBuzz(n int) int {
```

## example_test

```go
func TestFizzBuzz(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(0, FizzBuzz(50))
    assert.Equal(2, FizzBuzz(78))
    assert.Equal(3, FizzBuzz(79))
}
```
