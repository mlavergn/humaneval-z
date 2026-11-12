## task_id

```
C/73
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

// Given an array arr of integers, find the minimum number of elements that
// need to be changed to make the array palindromic. A palindromic array is an array that
// is read the same backwards and forwards. In one change, you can change one element to any other element.
//
// For example:
// smallest_change([1,2,3,5,4,7,9,6]) == 4
// smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
// smallest_change([1, 2, 3, 2, 1]) == 0
long long smallest_change(const long long *arr, size_t arr_len) {
```

## declaration

```c
long long smallest_change(const long long *arr, size_t arr_len) {
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
    assert(smallest_change((const long long[]){1, 2, 3, 5, 4, 7, 9, 6}, 8) == 4);
    assert(smallest_change((const long long[]){1, 2, 3, 4, 3, 2, 2}, 7) == 1);
    assert(smallest_change((const long long[]){1, 2, 3, 2, 1}, 5) == 0);
    assert(smallest_change((const long long[]){3, 1, 1, 3}, 4) == 0);
    return 0;
}
```
