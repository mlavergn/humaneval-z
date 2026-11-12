## task_id

```
C/51
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

// remove_vowels is a function that takes string and returns string without vowels.
// >>> remove_vowels("")
// ""
// >>> remove_vowels("abcdef\nghijklm")
// "bcdf\nghjklm"
// >>> remove_vowels("abcdef")
// "bcdf"
// >>> remove_vowels("aaaaa")
// ""
// >>> remove_vowels("aaBAA")
// "B"
// >>> remove_vowels("zbcd")
// "zbcd"
// Returns a malloc'd string; the caller frees it.
char *remove_vowels(const char *text) {
```

## declaration

```c
char *remove_vowels(const char *text) {
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
        char *got = remove_vowels("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("abcdef\nghijklm");
        assert(got && strcmp(got, "bcdf\nghjklm") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("abcdef");
        assert(got && strcmp(got, "bcdf") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("aaaaa");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("aaBAA");
        assert(got && strcmp(got, "B") == 0);
        free(got);
    }
    {
        char *got = remove_vowels("zbcd");
        assert(got && strcmp(got, "zbcd") == 0);
        free(got);
    }
    return 0;
}
```
