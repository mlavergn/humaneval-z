## task_id

```
C/25
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

// Return list of prime factors of given integer in the order from smallest to largest.
// Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
// Input number should be equal to the product of all factors
// >>> factorize(8)
// { 2, 2, 2 }
// >>> factorize(25)
// { 5, 5 }
// >>> factorize(70)
// { 2, 5, 7 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *factorize(long long n, size_t *out_len) {
```

## declaration

```c
long long *factorize(long long n, size_t *out_len) {
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
        long long *got = factorize(8, &n);
        assert(check_lls(got, n, (const long long[]){2, 2, 2}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(25, &n);
        assert(check_lls(got, n, (const long long[]){5, 5}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(70, &n);
        assert(check_lls(got, n, (const long long[]){2, 5, 7}, 3));
        free(got);
    }
    return 0;
}
```
