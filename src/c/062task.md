## task_id

```
C/62
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

// xs represent coefficients of a polynomial.
// xs[0] + xs[1] * x + xs[2] * x^2 + ....
// Return Derivative of this polynomial in the same form.
// >>> derivative({ 3, 1, 2, 4, 5 })
// { 1, 4, 12, 20 }
// >>> derivative({ 1, 2, 3 })
// { 2, 6 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *derivative(const long long *xs, size_t xs_len, size_t *out_len) {
```

## declaration

```c
long long *derivative(const long long *xs, size_t xs_len, size_t *out_len) {
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
        long long *got = derivative((const long long[]){3, 1, 2, 4, 5}, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 12, 20}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = derivative((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 6}, 2));
        free(got);
    }
    return 0;
}
```
