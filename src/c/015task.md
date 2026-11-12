## task_id

```
C/15
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

// Return a string containing space-delimited numbers starting from 0 upto n inclusive.
// >>> string_sequence(0)
// "0"
// >>> string_sequence(5)
// "0 1 2 3 4 5"
// Returns a malloc'd string; the caller frees it.
char *string_sequence(long long n) {
```

## declaration

```c
char *string_sequence(long long n) {
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
        char *got = string_sequence(0);
        assert(got && strcmp(got, "0") == 0);
        free(got);
    }
    {
        char *got = string_sequence(5);
        assert(got && strcmp(got, "0 1 2 3 4 5") == 0);
        free(got);
    }
    return 0;
}
```
