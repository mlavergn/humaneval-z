## task_id

```
C/21
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

// Given list of numbers (of at least two elements), apply a linear transform to that list,
// such that the smallest number will become 0 and the largest will become 1
// >>> rescale_to_unit({ 1.0, 2.0, 3.0, 4.0, 5.0 })
// { 0.0, 0.25, 0.5, 0.75, 1.0 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
double *rescale_to_unit(const double *numbers, size_t numbers_len, size_t *out_len) {
```

## declaration

```c
double *rescale_to_unit(const double *numbers, size_t numbers_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_doubles(const double *got, size_t n, const double *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        double *got = rescale_to_unit((const double[]){1.0, 2.0, 3.0, 4.0, 5.0}, 5, &n);
        assert(check_doubles(got, n, (const double[]){0.0, 0.25, 0.5, 0.75, 1.0}, 5));
        free(got);
    }
    return 0;
}
```
