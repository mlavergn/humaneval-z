## task_id

```
C/88
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

// Given an array of non-negative integers, return a copy of the given array after sorting,
// you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
// or sort it in descending order if the sum( first index value, last index value) is even.
//
// Note:
// * don't change the given array.
//
// Examples:
// * sort_array([]) => []
// * sort_array([5]) => [5]
// * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
// * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *sort_array(const long long *array, size_t array_len, size_t *out_len) {
```

## declaration

```c
long long *sort_array(const long long *array, size_t array_len, size_t *out_len) {
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
        long long *got = sort_array(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){5}, 1, &n);
        assert(check_lls(got, n, (const long long[]){5}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 3, 0, 1, 5}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 1, 2, 3, 4, 5}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 3, 0, 1, 5, 6}, 7, &n);
        assert(check_lls(got, n, (const long long[]){6, 5, 4, 3, 2, 1, 0}, 7));
        free(got);
    }
    return 0;
}
```
