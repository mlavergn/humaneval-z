## task_id

```
C/30
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

// Return only positive numbers in the list.
// >>> get_positive({ -1, 2, -4, 5, 6 })
// { 2, 5, 6 }
// >>> get_positive({ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 })
// { 5, 3, 2, 3, 9, 123, 1 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *get_positive(const long long *l, size_t l_len, size_t *out_len) {
```

## declaration

```c
long long *get_positive(const long long *l, size_t l_len, size_t *out_len) {
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
        long long *got = get_positive((const long long[]){-1, 2, -4, 5, 6}, 5, &n);
        assert(check_lls(got, n, (const long long[]){2, 5, 6}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = get_positive((const long long[]){5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}, 11, &n);
        assert(check_lls(got, n, (const long long[]){5, 3, 2, 3, 9, 123, 1}, 7));
        free(got);
    }
    return 0;
}
```
