## task_id

```
C/29
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

// Filter an input list of strings only for ones that start with a given prefix.
// >>> filter_by_prefix({}, "a")
// {}
// >>> filter_by_prefix({ "abc", "bcd", "cde", "array" }, "a")
// { "abc", "array" }
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **filter_by_prefix(const char *const *strings, size_t strings_len, const char *prefix, size_t *out_len) {
```

## declaration

```c
char **filter_by_prefix(const char *const *strings, size_t strings_len, const char *prefix, size_t *out_len) {
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
        char **got = filter_by_prefix(NULL, 0, "a", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = filter_by_prefix((const char *const[]){"abc", "bcd", "cde", "array"}, 4, "a", &n);
        assert(check_strs(got, n, (const char *const[]){"abc", "array"}, 2));
        free_strs(got, n);
    }
    return 0;
}
```
