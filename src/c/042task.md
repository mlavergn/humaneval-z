## task_id

```
C/42
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

// Return list with elements incremented by 1.
// >>> incr_list({ 1, 2, 3 })
// { 2, 3, 4 }
// >>> incr_list({ 5, 3, 5, 2, 3, 3, 9, 0, 123 })
// { 6, 4, 6, 3, 4, 4, 10, 1, 124 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *incr_list(const long long *l, size_t l_len, size_t *out_len) {
```

## declaration

```c
long long *incr_list(const long long *l, size_t l_len, size_t *out_len) {
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
        long long *got = incr_list((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 4}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = incr_list((const long long[]){5, 2, 5, 2, 3, 3, 9, 0, 123}, 9, &n);
        assert(check_lls(got, n, (const long long[]){6, 3, 6, 3, 4, 4, 10, 1, 124}, 9));
        free(got);
    }
    return 0;
}
```
