## task_id

```
C/50
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

// returns encoded string by shifting every character by 5 in the alphabet.
char *encode_shift(const char *s) {
    size_t len = strlen(s);
    char *result = malloc(len + 1);
    if (!result) return NULL;
    for (size_t i = 0; i < len; i++) result[i] = (char)((s[i] - 'a' + 5) % 26 + 'a');
    result[len] = '\0';
    return result;
}

// takes as input string encoded with encode_shift function. Returns decoded string.
// Returns a malloc'd string; the caller frees it.
char *decode_shift(const char *s) {
```

## declaration

```c
char *decode_shift(const char *s) {
```

## example_test

```c
```
