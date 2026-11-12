## task_id

```
C/135
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

// Create a function which returns the largest index of an element which
// is not greater than or equal to the element immediately preceding it. If
// no such element exists then return -1. The given array will not contain
// duplicate values.
//
// Examples:
// can_arrange([1,2,4,3,5]) = 3
// can_arrange([1,2,3]) = -1
long long can_arrange(const long long *arr, size_t arr_len) {
```

## declaration

```c
long long can_arrange(const long long *arr, size_t arr_len) {
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
    assert(can_arrange((const long long[]){1, 2, 4, 3, 5}, 5) == 3);
    assert(can_arrange((const long long[]){1, 2, 3}, 3) == -1);
    return 0;
}
```
