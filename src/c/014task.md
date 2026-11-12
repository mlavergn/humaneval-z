## task_id

```
C/14
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

// Return list of all prefixes from shortest to longest of the input string
// >>> all_prefixes("abc")
// { "a", "ab", "abc" }
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **all_prefixes(const char *str, size_t *out_len) {
```

## declaration

```c
char **all_prefixes(const char *str, size_t *out_len) {
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
        char **got = all_prefixes("abc", &n);
        assert(check_strs(got, n, (const char *const[]){"a", "ab", "abc"}, 3));
        free_strs(got, n);
    }
    return 0;
}
```
