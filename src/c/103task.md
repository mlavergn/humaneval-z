## task_id

```
C/103
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

// You are given two positive integers n and m, and your task is to compute the
// average of the integers from n through m (including n and m).
// Round the answer to the nearest integer and convert that to binary.
// If n is greater than m, return -1.
// Example:
// rounded_avg(1, 5) => "0b11"
// rounded_avg(7, 5) => -1
// rounded_avg(10, 20) => "0b1111"
// rounded_avg(20, 33) => "0b11010"
// Returns NULL where the original returns -1 (m < n).
// Returns a malloc'd string (the caller frees it), or NULL if n is greater than m.
char *rounded_avg(long long n, long long m) {
```

## declaration

```c
char *rounded_avg(long long n, long long m) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = rounded_avg(1, 5);
        assert(got && strcmp(got, "0b11") == 0);
        free(got);
    }
    assert(rounded_avg(7, 5) == NULL);
    {
        char *got = rounded_avg(10, 20);
        assert(got && strcmp(got, "0b1111") == 0);
        free(got);
    }
    {
        char *got = rounded_avg(20, 33);
        assert(got && strcmp(got, "0b11011") == 0);
        free(got);
    }
    return 0;
}
```
