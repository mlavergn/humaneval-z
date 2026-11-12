## task_id

```
C/116
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

// In this Kata, you have to sort an array of non-negative integers according to
// number of ones in their binary representation in ascending order.
// For similar number of ones, sort based on decimal value.
//
// It must be implemented like this:
// >>> sort_array({ 1, 5, 2, 3, 4 }) == { 1, 2, 3, 4, 5 }
// >>> sort_array({ -2, -3, -4, -5, -6 }) == { -6, -5, -4, -3, -2 }
// >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *sort_array(const long long *arr, size_t arr_len, size_t *out_len) {
```

## declaration

```c
long long *sort_array(const long long *arr, size_t arr_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_lls(const long long *got, size_t n, const long long *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        long long *got = sort_array((const long long[]){1, 5, 2, 3, 4}, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 4, 3, 5}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){-2, -3, -4, -5, -6}, 5, &n);
        assert(check_lls(got, n, (const long long[]){-4, -2, -6, -5, -3}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){1, 0, 2, 3, 4}, 5, &n);
        assert(check_lls(got, n, (const long long[]){0, 1, 2, 4, 3}, 5));
        free(got);
    }
    return 0;
}
```
