## task_id

```
C/22
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

// A dynamically typed value.
typedef enum { VALUE_NONE, VALUE_INT, VALUE_FLOAT, VALUE_BOOL, VALUE_STRING, VALUE_LIST, VALUE_DICT } value_kind;

typedef struct value {
    value_kind kind;
    union {
        long long i;
        double f;
        bool b;
        const char *s;
        struct {
            const struct value *items;
            size_t len;
        } list;  // VALUE_LIST; VALUE_DICT stores alternating keys and values
    } as;
} value;

// Filter given list of any values only for integers
// >>> filter_integers({ "a", 3.14, 5 })
// { 5 }
// >>> filter_integers({ 1, 2, 3, "abc", {}, {} })
// { 1, 2, 3 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *filter_integers(const value *values, size_t values_len, size_t *out_len) {
```

## declaration

```c
long long *filter_integers(const value *values, size_t values_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

static bool check_lls(const long long *got, size_t n, const long long *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        const value values[] = {
            {.kind = VALUE_STRING, .as.s = "a"},
            {.kind = VALUE_FLOAT, .as.f = 3.14},
            {.kind = VALUE_INT, .as.i = 5},
        };
        size_t n;
        long long *got = filter_integers(values, 3, &n);
        assert(check_lls(got, n, (const long long[]){5}, 1));
        free(got);
    }
    {
        const value values[] = {
            {.kind = VALUE_INT, .as.i = 1},
            {.kind = VALUE_INT, .as.i = 2},
            {.kind = VALUE_INT, .as.i = 3},
            {.kind = VALUE_STRING, .as.s = "abc"},
            {.kind = VALUE_DICT, .as.list = {NULL, 0}},
            {.kind = VALUE_LIST, .as.list = {NULL, 0}},
        };
        size_t n;
        long long *got = filter_integers(values, 6, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3}, 3));
        free(got);
    }
    return 0;
}
```
