## task_id

```
C/86
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

// Write a function that takes a string and returns an ordered version of it.
// Ordered version of string, is a string where all words (separated by space)
// are replaced by a new word where all the characters arranged in
// ascending order based on ascii value.
// Note: You should keep the order of words and blank spaces in the sentence.
//
// For example:
// anti_shuffle('Hi') returns 'Hi'
// anti_shuffle('hello') returns 'ehllo'
// anti_shuffle('Hello World!!!') returns 'Hello !!!Wdlor'
// Returns a malloc'd string; the caller frees it.
char *anti_shuffle(const char *s) {
```

## declaration

```c
char *anti_shuffle(const char *s) {
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
        char *got = anti_shuffle("Hi");
        assert(got && strcmp(got, "Hi") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("hello");
        assert(got && strcmp(got, "ehllo") == 0);
        free(got);
    }
    {
        char *got = anti_shuffle("Hello World!!!");
        assert(got && strcmp(got, "Hello !!!Wdlor") == 0);
        free(got);
    }
    return 0;
}
```
