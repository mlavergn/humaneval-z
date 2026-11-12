## task_id

```
C/37
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

// This function takes a list l and returns a list l' such that
// l' is identical to l in the odd indicies, while its values at the even indicies are equal
// to the values of the even indicies of l, but sorted.
// >>> sort_even({ 1, 2, 3 })
// { 1, 2, 3 }
// >>> sort_even({ 5, 6, 3, 4 })
// { 3, 6, 5, 4 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *sort_even(const long long *l, size_t l_len, size_t *out_len) {
```

## declaration

```c
long long *sort_even(const long long *l, size_t l_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

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
        long long *got = sort_even((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_even((const long long[]){5, 6, 3, 4}, 4, &n);
        assert(check_lls(got, n, (const long long[]){3, 6, 5, 4}, 4));
        free(got);
    }
    return 0;
}
```
