## task_id

```
C/93
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

// Write a function that takes a message, and Encodes in such a
// way that it swaps case of all letters, replaces all vowels in
// the message with the letter that appears 2 places ahead of that
// vowel in the english alphabet.
// Assume only letters.
//
// Examples:
// >>> encode("test")
// "TGST"
// >>> encode("This is a message")
// "tHKS KS C MGSSCGG"
// Returns a malloc'd string; the caller frees it.
char *encode(const char *message) {
```

## declaration

```c
char *encode(const char *message) {
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
        char *got = encode("test");
        assert(got && strcmp(got, "TGST") == 0);
        free(got);
    }
    {
        char *got = encode("This is a message");
        assert(got && strcmp(got, "tHKS KS C MGSSCGG") == 0);
        free(got);
    }
    return 0;
}
```
