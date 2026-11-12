## task_id

```
C/6
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

// Input to this function is a string represented multiple groups for nested parentheses separated by spaces.
// For each of the group, output the deepest level of nesting of parentheses.
// E.g. (()()) has maximum two levels of nesting while ((())) has three.
//
// >>> parse_nested_parens("(()()) ((())) () ((())()())")
// { 2, 3, 1, 3 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *parse_nested_parens(const char *paren_string, size_t *out_len) {
```

## declaration

```c
long long *parse_nested_parens(const char *paren_string, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_lls(const long long *got, size_t n, const long long *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        long long *got = parse_nested_parens("(()()) ((())) () ((())()())", &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 1, 3}, 4));
        free(got);
    }
    return 0;
}
```
