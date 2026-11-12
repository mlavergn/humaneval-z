## task_id

```
C/156
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

// Given a positive integer, obtain its roman numeral equivalent as a string,
// and return it in lowercase.
// Restrictions: 1 <= num <= 1000
//
// Examples:
// >>> int_to_mini_roman(19) == "xix"
// >>> int_to_mini_roman(152) == "clii"
// >>> int_to_mini_roman(426) == "cdxxvi"
// Returns a malloc'd string; the caller frees it.
char *int_to_mini_roman(long long number) {
```

## declaration

```c
char *int_to_mini_roman(long long number) {
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
        char *got = int_to_mini_roman(19);
        assert(got && strcmp(got, "xix") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(152);
        assert(got && strcmp(got, "clii") == 0);
        free(got);
    }
    {
        char *got = int_to_mini_roman(426);
        assert(got && strcmp(got, "cdxxvi") == 0);
        free(got);
    }
    return 0;
}
```
