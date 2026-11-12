## task_id

```
C/104
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

// Given a list of positive integers x. return a sorted list of all
// elements that hasn't any even digit.
//
// Note: Returned list should be sorted in increasing order.
//
// For example:
// >>> unique_digits({ 15, 33, 1422, 1 })
// { 1, 15, 33 }
// >>> unique_digits({ 152, 323, 1422, 10 })
// {}
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *unique_digits(const long long *x, size_t x_len, size_t *out_len) {
```

## declaration

```c
long long *unique_digits(const long long *x, size_t x_len, size_t *out_len) {
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
        long long *got = unique_digits((const long long[]){15, 33, 1422, 1}, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 15, 33}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = unique_digits((const long long[]){152, 323, 1422, 10}, 4, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
```
