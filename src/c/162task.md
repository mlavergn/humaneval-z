## task_id

```
C/162
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

#include <openssl/evp.h>

// Given a string 'text', return its md5 hash equivalent string.
// If 'text' is an empty string, return NULL.
//
// >>> string_to_md5("Hello world") == "3e25960a79dbc69b674cd4ec67a72c62"
// Returns a malloc'd string (the caller frees it), or NULL if text is empty.
char *string_to_md5(const char *text) {
```

## declaration

```c
char *string_to_md5(const char *text) {
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
        char *got = string_to_md5("Hello world");
        assert(got && strcmp(got, "3e25960a79dbc69b674cd4ec67a72c62") == 0);
        free(got);
    }
    return 0;
}
```
