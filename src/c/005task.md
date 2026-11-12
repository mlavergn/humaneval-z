## task_id

```
C/5
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

// Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
// >>> intersperse({}, 4)
// {}
// >>> intersperse({ 1, 2, 3 }, 4)
// { 1, 4, 2, 4, 3 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *intersperse(const long long *numbers, size_t numbers_len, long long delimeter, size_t *out_len) {
```

## declaration

```c
long long *intersperse(const long long *numbers, size_t numbers_len, long long delimeter, size_t *out_len) {
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
        long long *got = intersperse(NULL, 0, 4, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = intersperse((const long long[]){1, 2, 3}, 3, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 2, 4, 3}, 5));
        free(got);
    }
    return 0;
}
```
