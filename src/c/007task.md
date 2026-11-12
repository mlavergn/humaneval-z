## task_id

```
C/7
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

// Filter an input list of strings only for ones that contain given substring
// >>> filter_by_substring({}, "a")
// {}
// >>> filter_by_substring({ "abc", "bacd", "cde", "array" }, "a")
// { "abc", "bacd", "array" }
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **filter_by_substring(const char *const *string_list, size_t string_list_len, const char *substring, size_t *out_len) {
```

## declaration

```c
char **filter_by_substring(const char *const *string_list, size_t string_list_len, const char *substring, size_t *out_len) {
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
        char **got = filter_by_substring(NULL, 0, "a", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = filter_by_substring((const char *const[]){"abc", "bacd", "cde", "array"}, 4, "a", &n);
        assert(check_strs(got, n, (const char *const[]){"abc", "bacd", "array"}, 3));
        free_strs(got, n);
    }
    return 0;
}
```
