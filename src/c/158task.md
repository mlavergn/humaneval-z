## task_id

```
C/158
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

// Write a function that accepts a list of strings.
// The list contains different words. Return the word with maximum number
// of unique characters. If multiple strings have maximum number of unique
// characters, return the one which comes first in lexicographical order.
//
// find_max(["name", "of", "string"]) == "string"
// find_max(["name", "enam", "game"]) == "enam"
// find_max(["aaaaaaa", "bb" ,"cc"]) == ""aaaaaaa"
// Returns a malloc'd string; the caller frees it.
char *find_max(const char *const *words, size_t words_len) {
```

## declaration

```c
char *find_max(const char *const *words, size_t words_len) {
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
        char *got = find_max((const char *const[]){"name", "of", "string"}, 3);
        assert(got && strcmp(got, "string") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"name", "enam", "game"}, 3);
        assert(got && strcmp(got, "enam") == 0);
        free(got);
    }
    {
        char *got = find_max((const char *const[]){"aaaaaaa", "bb", "cc"}, 3);
        assert(got && strcmp(got, "aaaaaaa") == 0);
        free(got);
    }
    return 0;
}
```
