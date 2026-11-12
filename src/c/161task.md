## task_id

```
C/161
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

// You are given a string s.
// if s[i] is a letter, reverse its case from lower to upper or vise versa,
// otherwise keep it as it is.
// If the string contains no letters, reverse the string.
// The function should return the resulted string.
// Examples
// solve("1234") = "4321"
// solve("ab") = "AB"
// solve("#a@C") = "#A@c"
// Returns a malloc'd string; the caller frees it.
char *solve(const char *s) {
```

## declaration

```c
char *solve(const char *s) {
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
        char *got = solve("1234");
        assert(got && strcmp(got, "4321") == 0);
        free(got);
    }
    {
        char *got = solve("ab");
        assert(got && strcmp(got, "AB") == 0);
        free(got);
    }
    {
        char *got = solve("#a@C");
        assert(got && strcmp(got, "#A@c") == 0);
        free(got);
    }
    return 0;
}
```
