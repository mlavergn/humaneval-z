## task_id

```
C/33
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
// l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal
// to the values of the corresponding indicies of l, but sorted.
// >>> sort_third({ 1, 2, 3 })
// { 1, 2, 3 }
// >>> sort_third({ 5, 6, 3, 4, 8, 9, 2 })
// { 2, 6, 3, 4, 8, 9, 5 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *sort_third(const long long *l, size_t l_len, size_t *out_len) {
```

## declaration

```c
long long *sort_third(const long long *l, size_t l_len, size_t *out_len) {
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
        long long *got = sort_third((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 6, 3, 4, 8, 9, 2}, 7, &n);
        assert(check_lls(got, n, (const long long[]){2, 6, 3, 4, 8, 9, 5}, 7));
        free(got);
    }
    return 0;
}
```
