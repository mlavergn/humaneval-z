## task_id

```
C/69
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

// You are given a non-empty list of positive integers. Return the greatest integer that is greater than
// zero, and has a frequency greater than or equal to the value of the integer itself.
// The frequency of an integer is the number of times it appears in the list.
// If no such a value exist, return -1.
// Examples:
// search([4, 1, 2, 2, 3, 1]) == 2
// search([1, 2, 2, 3, 3, 3, 4, 4, 4]) == 3
// search([5, 5, 4, 4, 4]) == -1
long long search(const long long *lst, size_t lst_len) {
```

## declaration

```c
long long search(const long long *lst, size_t lst_len) {
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
    assert(search((const long long[]){4, 1, 2, 2, 3, 1}, 6) == 2);
    assert(search((const long long[]){1, 2, 2, 3, 3, 3, 4, 4, 4}, 9) == 3);
    assert(search((const long long[]){5, 5, 4, 4, 4}, 5) == -1);
    return 0;
}
```
