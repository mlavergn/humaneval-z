## task_id

```
C/119
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

// You are given a list of two strings, both strings consist of open
// parentheses '(' or close parentheses ')' only.
// Your job is to check if it is possible to concatenate the two strings in
// some order, that the resulting string will be good.
// A string S is considered to be good if and only if all parentheses in S
// are balanced. For example: the string '(())()' is good, while the string
// '())' is not.
// Return 'Yes' if there's a way to make a good string, and return 'No' otherwise.
//
// Examples:
// match_parens(['()(', ')']) == 'Yes'
// match_parens([')', ')']) == 'No'
// Returns a malloc'd string; the caller frees it.
char *match_parens(const char *const *lst, size_t lst_len) {
```

## declaration

```c
char *match_parens(const char *const *lst, size_t lst_len) {
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
        char *got = match_parens((const char *const[]){"()(", ")"}, 2);
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = match_parens((const char *const[]){")", ")"}, 2);
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    return 0;
}
```
