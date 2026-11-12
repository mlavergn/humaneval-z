## task_id

```
C/108
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

// Write a function count_nums which takes an array of integers and returns
// the number of elements which has a sum of digits > 0.
// If a number is negative, then its first signed digit will be negative:
// e.g. -123 has signed digits -1, 2, and 3.
// >>> count_nums({}) == 0
// >>> count_nums({ -1, 11, -11 }) == 1
// >>> count_nums({ 1, 1, 2 }) == 3
long long count_nums(const long long *arr, size_t arr_len) {
```

## declaration

```c
long long count_nums(const long long *arr, size_t arr_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    assert(count_nums(NULL, 0) == 0);
    assert(count_nums((const long long[]){-1, 11, -11}, 3) == 1);
    assert(count_nums((const long long[]){1, 1, 2}, 3) == 3);
    return 0;
}
```
