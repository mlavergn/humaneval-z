## task_id

```
C/96
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

// Implement a function that takes an non-negative integer and returns an array of the first n
// integers that are prime numbers and less than n.
// for example:
// count_up_to(5) => [2,3]
// count_up_to(11) => [2,3,5,7]
// count_up_to(0) => []
// count_up_to(20) => [2,3,5,7,11,13,17,19]
// count_up_to(1) => []
// count_up_to(18) => [2,3,5,7,11,13,17]
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *count_up_to(long long n, size_t *out_len) {
```

## declaration

```c
long long *count_up_to(long long n, size_t *out_len) {
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
        long long *got = count_up_to(5, &n);
        assert(check_lls(got, n, (const long long[]){2, 3}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(11, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(20, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(1, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(18, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17}, 7));
        free(got);
    }
    return 0;
}
```
