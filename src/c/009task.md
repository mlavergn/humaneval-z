## task_id

```
C/9
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

// From a given list of integers, generate a list of rolling maximum element found until given moment
// in the sequence.
// >>> rolling_max({ 1, 2, 3, 2, 3, 4, 2 })
// { 1, 2, 3, 3, 3, 4, 4 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *rolling_max(const long long *numbers, size_t numbers_len, size_t *out_len) {
```

## declaration

```c
long long *rolling_max(const long long *numbers, size_t numbers_len, size_t *out_len) {
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
        long long *got = rolling_max((const long long[]){1, 2, 3, 2, 3, 4, 2}, 7, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3, 3, 3, 4, 4}, 7));
        free(got);
    }
    return 0;
}
```
