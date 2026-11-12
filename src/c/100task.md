## task_id

```
C/100
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

// Given a positive integer n, you have to make a pile of n levels of stones.
// The first level has n stones.
// The number of stones in the next level is:
// - the next odd number if n is odd.
// - the next even number if n is even.
// Return the number of stones in each level in a list, where element at index
// i represents the number of stones in the level (i+1).
//
// Examples:
// >>> make_apile(3)
// { 3, 5, 7 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *make_a_pile(long long n, size_t *out_len) {
```

## declaration

```c
long long *make_a_pile(long long n, size_t *out_len) {
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
        long long *got = make_a_pile(3, &n);
        assert(check_lls(got, n, (const long long[]){3, 5, 7}, 3));
        free(got);
    }
    return 0;
}
```
