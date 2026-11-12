## task_id

```
C/101
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

// You will be given a string of words separated by commas or spaces. Your task is
// to split the string into words and return an array of the words.
//
// For example:
// words_string("Hi, my name is John") == ["Hi", "my", "name", "is", "John"]
// words_string("One, two, three, four, five, six") == ["One", "two", "three", "four", "five", "six"]
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **words_string(const char *s, size_t *out_len) {
```

## declaration

```c
char **words_string(const char *s, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_strs(char **got, size_t n, const char *const *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (strcmp(got[i], want[i]) != 0) return false;
    }
    return true;
}

static void free_strs(char **xs, size_t n) {
    for (size_t i = 0; i < n; i++) free(xs[i]);
    free(xs);
}

int main(void) {
    {
        size_t n;
        char **got = words_string("Hi, my name is John", &n);
        assert(check_strs(got, n, (const char *const[]){"Hi", "my", "name", "is", "John"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("One, two, three, four, five, six", &n);
        assert(check_strs(got, n, (const char *const[]){"One", "two", "three", "four", "five", "six"}, 6));
        free_strs(got, n);
    }
    return 0;
}
```
