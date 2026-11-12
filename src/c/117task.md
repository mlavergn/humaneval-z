## task_id

```
C/117
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

// Given a string s and a natural number n, you have been tasked to implement
// a function that returns a list of all words from string s that contain exactly
// n consonants, in order these words appear in the string s.
// If the string s is empty then the function should return an empty list.
// Note: you may assume the input string contains only letters and spaces.
// Examples:
// select_words("Mary had a little lamb", 4) ==> ["little"]
// select_words("Mary had a little lamb", 3) ==> ["Mary", "lamb"]
// select_words("simple white space", 2) ==> []
// select_words("Hello world", 4) ==> ["world"]
// select_words("Uncle sam", 3) ==> ["Uncle"]
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **select_words(const char *s, long long n, size_t *out_len) {
```

## declaration

```c
char **select_words(const char *s, long long n, size_t *out_len) {
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
        char **got = select_words("Mary had a little lamb", 4, &n);
        assert(check_strs(got, n, (const char *const[]){"little"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Mary had a little lamb", 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Mary", "lamb"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("simple white space", 2, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Hello world", 4, &n);
        assert(check_strs(got, n, (const char *const[]){"world"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Uncle sam", 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Uncle"}, 1));
        free_strs(got, n);
    }
    return 0;
}
```
