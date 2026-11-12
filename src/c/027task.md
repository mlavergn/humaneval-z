## task_id

```
C/27
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

// For a given string, flip lowercase characters to uppercase and uppercase to lowercase.
// >>> flip_case("Hello")
// "hELLO"
// Returns a malloc'd string; the caller frees it.
char *flip_case(const char *str) {
```

## declaration

```c
char *flip_case(const char *str) {
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
        char *got = flip_case("Hello");
        assert(got && strcmp(got, "hELLO") == 0);
        free(got);
    }
    return 0;
}
```
