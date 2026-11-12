## task_id

```
C/38
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

// returns encoded string by cycling groups of three characters.
char *encode_cyclic(const char *s) {
    size_t len = strlen(s);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    memcpy(result, s, len + 1);
    for (size_t i = 0; i + 3 <= len; i += 3) {
        result[i] = s[i + 1];
        result[i + 1] = s[i + 2];
        result[i + 2] = s[i];
    }
    return result;
}

// takes as input string encoded with encode_cyclic function. Returns decoded string.
// Returns a malloc'd string; the caller frees it.
char *decode_cyclic(const char *s) {
```

## declaration

```c
char *decode_cyclic(const char *s) {
```

## example_test

```c
```
