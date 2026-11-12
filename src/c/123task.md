## task_id

```
C/123
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

// Given a positive integer n, return a sorted list that has the odd numbers in collatz sequence.
//
// The Collatz conjecture is a conjecture in mathematics that concerns a sequence defined
// as follows: start with any positive integer n. Then each term is obtained from the
// previous term as follows: if the previous term is even, the next term is one half of
// the previous term. If the previous term is odd, the next term is 3 times the previous
// term plus 1. The conjecture is that no matter what value of n, the sequence will always reach 1.
//
// Note:
// 1. Collatz(1) is [1].
// 2. returned list sorted in increasing order.
//
// For example:
// get_odd_collatz(5) returns [1, 5] # The collatz sequence for 5 is [5, 16, 8, 4, 2, 1], so the odd numbers are only 1, and 5.
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *get_odd_collatz(long long n, size_t *out_len) {
```

## declaration

```c
long long *get_odd_collatz(long long n, size_t *out_len) {
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
        long long *got = get_odd_collatz(5, &n);
        assert(check_lls(got, n, (const long long[]){1, 5}, 2));
        free(got);
    }
    return 0;
}
```
