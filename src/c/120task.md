## task_id

```
C/120
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

// Given an array arr of integers and a positive integer k, return a sorted list
// of length k with the Maximum k numbers in arr.
//
// Example 1:
//
// Input: arr = [-3, -4, 5], k = 3
// Output: [-4, -3, 5]
//
// Example 2:
//
// Input: arr = [4, -4, 4], k = 2
// Output: [4, 4]
//
// Example 3:
//
// Input: arr = [-3, 2, 1, 2, -1, -2, 1], k = 1
// Output: [2]
//
// Note:
// 1. The length of the array will be in the range of [1, 1000].
// 2. The elements in the array will be in the range of [-1000, 1000].
// 3. 0 <= k <= len(arr)
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *maximum(const long long *arr, size_t arr_len, long long k, size_t *out_len) {
```

## declaration

```c
long long *maximum(const long long *arr, size_t arr_len, long long k, size_t *out_len) {
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
        long long *got = maximum((const long long[]){-3, -4, 5}, 3, 3, &n);
        assert(check_lls(got, n, (const long long[]){-4, -3, 5}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){4, -4, 4}, 3, 2, &n);
        assert(check_lls(got, n, (const long long[]){4, 4}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){-3, 2, 1, 2, -1, -2, 1}, 7, 1, &n);
        assert(check_lls(got, n, (const long long[]){2}, 1));
        free(got);
    }
    return 0;
}
```
