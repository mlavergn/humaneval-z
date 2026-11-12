## task_id

```
C/163
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

// Given two positive integers a and b, return the even digits between a
// and b, in ascending order.
//
// For example:
// generate_integers(2, 8) => [2, 4, 6, 8]
// generate_integers(8, 2) => [2, 4, 6, 8]
// generate_integers(10, 14) => []
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *generate_integers(long long a, long long b, size_t *out_len) {
```

## declaration

```c
long long *generate_integers(long long a, long long b, size_t *out_len) {
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
        long long *got = generate_integers(2, 8, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6, 8}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = generate_integers(8, 2, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6, 8}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = generate_integers(10, 14, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
```
