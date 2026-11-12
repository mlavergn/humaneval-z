## task_id

```
C/12
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

// Out of list of strings, return the Longest one. Return the first one in case of multiple
// strings of the same length. Return NULL in case the input list is empty.
// >>> longest({})
// NULL
// >>> longest({ "a", "b", "c" })
// "a"
// >>> longest({ "a", "bb", "ccc" })
// "ccc"
// Returns a malloc'd string; the caller frees it.
char *longest(const char *const *strings, size_t strings_len) {
```

## declaration

```c
char *longest(const char *const *strings, size_t strings_len) {
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
        char *got = longest(NULL, 0);
        assert(got == NULL);
    }
    {
        char *got = longest((const char *const[]){"a", "b", "c"}, 3);
        assert(got && strcmp(got, "a") == 0);
        free(got);
    }
    {
        char *got = longest((const char *const[]){"a", "bb", "ccc"}, 3);
        assert(got && strcmp(got, "ccc") == 0);
        free(got);
    }
    return 0;
}
```
