## task_id

```
C/28
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

// Concatenate list of strings into a single string
// >>> concatenate({})
// ""
// >>> concatenate({ "a", "b", "c" })
// "abc"
// Returns a malloc'd string; the caller frees it.
char *concatenate(const char *const *strings, size_t strings_len) {
```

## declaration

```c
char *concatenate(const char *const *strings, size_t strings_len) {
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
        char *got = concatenate(NULL, 0);
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = concatenate((const char *const[]){"a", "b", "c"}, 3);
        assert(got && strcmp(got, "abc") == 0);
        free(got);
    }
    return 0;
}
```
