## task_id

```
C/145
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

// Write a function which sorts the given list of integers
// in ascending order according to the sum of their digits.
// Note: if there are several items with similar sum of their digits,
// order them based on their index in original list.
//
// For example:
// >>> order_by_points({ 1, 11, -1, -11, -12 }) == { -1, -11, 1, -12, 11 }
// >>> order_by_points({}) == {}
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *order_by_points(const long long *nums, size_t nums_len, size_t *out_len) {
```

## declaration

```c
long long *order_by_points(const long long *nums, size_t nums_len, size_t *out_len) {
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
        long long *got = order_by_points((const long long[]){1, 11, -1, -11, -12}, 5, &n);
        assert(check_lls(got, n, (const long long[]){-1, -11, 1, -12, 11}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
```
