## task_id

```
Go/124
```

## prompt

```go
import (
    "strconv"
    "strings"
)

// You have to write a function which validates a given date string and
// returns true if the date is valid otherwise false.
// The date is valid if all of the following rules are satisfied:
// 1. The date string is not empty.
// 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
// 3. The months should not be less than 1 or higher than 12.
// 4. The date should be in the format: mm-dd-yyyy
// 
// for example:
// ValidDate('03-11-2000') => true
// 
// ValidDate('15-01-2012') => false
// 
// ValidDate('04-0-2040') => false
// 
// ValidDate('06-04-2020') => true
// 
// ValidDate('06/04/2020') => false
func ValidDate(date string) bool {
```

## declaration

```go
func ValidDate(date string) bool {
```

## example_test

```go
func TestValidDate(t *testing.T) {
    assert := assert.New(t)
    assert.Equal(true, ValidDate("03-11-2000"))
    assert.Equal(false, ValidDate("15-01-2012"))
    assert.Equal(false, ValidDate("04-0-2040"))
    assert.Equal(true, ValidDate("06-04-2020"))
    assert.Equal(false, ValidDate("06/04/2020"))
}
```
