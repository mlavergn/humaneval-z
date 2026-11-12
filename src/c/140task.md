## task_id

```
C/140
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

// Given a string text, replace all spaces in it with underscores,
// and if a string has more than 2 consecutive spaces,
// then replace all consecutive spaces with -
//
// fix_spaces("Example") == "Example"
// fix_spaces("Example 1") == "Example_1"
// fix_spaces(" Example 2") == "_Example_2"
// fix_spaces(" Example   3") == "_Example-3"
// Returns a malloc'd string; the caller frees it.
char *fix_spaces(const char *text) {
```

## declaration

```c
char *fix_spaces(const char *text) {
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
        char *got = fix_spaces("Example");
        assert(got && strcmp(got, "Example") == 0);
        free(got);
    }
    {
        char *got = fix_spaces("Example 1");
        assert(got && strcmp(got, "Example_1") == 0);
        free(got);
    }
    {
        char *got = fix_spaces(" Example 2");
        assert(got && strcmp(got, "_Example_2") == 0);
        free(got);
    }
    {
        char *got = fix_spaces(" Example   3");
        assert(got && strcmp(got, "_Example-3") == 0);
        free(got);
    }
    return 0;
}
```
