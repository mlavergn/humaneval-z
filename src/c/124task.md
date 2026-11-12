## task_id

```
C/124
```

## prompt

```c
#include <stdbool.h>
#include <stddef.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>

// You have to write a function which validates a given date string and
// returns true if the date is valid otherwise false.
// The date is valid if all of the following rules are satisfied:
// 1. The date string is not empty.
// 2. The number of days is not less than 1 or higher than 31 days for months 1,3,5,7,8,10,12. And the number of days is not less than 1 or higher than 30 days for months 4,6,9,11. And, the number of days is not less than 1 or higher than 29 for the month 2.
// 3. The months should not be less than 1 or higher than 12.
// 4. The date should be in the format: mm-dd-yyyy
//
// for example:
// valid_date('03-11-2000') => true
//
// valid_date('15-01-2012') => false
//
// valid_date('04-0-2040') => false
//
// valid_date('06-04-2020') => true
//
// valid_date('06/04/2020') => false
bool valid_date(const char *date) {
```

## declaration

```c
bool valid_date(const char *date) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    assert(valid_date("03-11-2000"));
    assert(!valid_date("15-01-2012"));
    assert(!valid_date("04-0-2040"));
    assert(valid_date("06-04-2020"));
    assert(!valid_date("06/04/2020"));
    return 0;
}
```
