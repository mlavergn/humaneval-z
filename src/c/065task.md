## task_id

```
C/65
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

// Circular shift the digits of the integer x, shift the digits right by shift
// and return the result as a string.
// If shift > number of digits, return digits reversed.
// >>> circular_shift(12, 1)
// "21"
// >>> circular_shift(12, 2)
// "12"
// Returns a malloc'd string; the caller frees it.
char *circular_shift(long long x, long long shift) {
```

## declaration

```c
char *circular_shift(long long x, long long shift) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    {
        char *got = circular_shift(12, 2);
        assert(got && strcmp(got, "12") == 0);
        free(got);
    }
    {
        char *got = circular_shift(12, 1);
        assert(got && strcmp(got, "21") == 0);
        free(got);
    }
    return 0;
}
```
