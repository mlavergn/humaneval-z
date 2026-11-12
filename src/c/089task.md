## task_id

```
C/89
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

// Create a function Encrypt that takes a string as an argument and
// returns a string Encrypted with the alphabet being rotated.
// The alphabet should be rotated in a manner such that the letters
// shift down by two multiplied to two places.
// For example:
// encrypt('hi') returns 'lm'
// encrypt('asdfghjkl') returns 'ewhjklnop'
// encrypt('gf') returns 'kj'
// encrypt('et') returns 'ix'
// Returns a malloc'd string; the caller frees it.
char *encrypt(const char *s) {
```

## declaration

```c
char *encrypt(const char *s) {
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
        char *got = encrypt("hi");
        assert(got && strcmp(got, "lm") == 0);
        free(got);
    }
    {
        char *got = encrypt("asdfghjkl");
        assert(got && strcmp(got, "ewhjklnop") == 0);
        free(got);
    }
    {
        char *got = encrypt("gf");
        assert(got && strcmp(got, "kj") == 0);
        free(got);
    }
    {
        char *got = encrypt("et");
        assert(got && strcmp(got, "ix") == 0);
        free(got);
    }
    return 0;
}
```
