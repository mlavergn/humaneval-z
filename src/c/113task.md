## task_id

```
C/113
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

// Given a list of strings, where each string consists of only digits, return a list.
// Each element i of the output should be "the number of odd elements in the
// string i of the input." where all the i's should be replaced by the number
// of odd digits in the i'th string of the input.
//
// >>> odd_count({ "1234567" })
// { "the number of odd elements 4n the str4ng 4 of the 4nput." }
// >>> odd_count({ "3", "11111111" })
// ["the number of odd elements 1n the str1ng 1 of the 1nput.",
// "the number of odd elements 8n the str8ng 8 of the 8nput."]
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **odd_count(const char *const *lst, size_t lst_len, size_t *out_len) {
```

## declaration

```c
char **odd_count(const char *const *lst, size_t lst_len, size_t *out_len) {
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
        char **got = odd_count((const char *const[]){"1234567"}, 1, &n);
        assert(check_strs(got, n, (const char *const[]){"the number of odd elements 4n the str4ng 4 of the 4nput."}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = odd_count((const char *const[]){"3", "11111111"}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"the number of odd elements 1n the str1ng 1 of the 1nput.", "the number of odd elements 8n the str8ng 8 of the 8nput."}, 2));
        free_strs(got, n);
    }
    return 0;
}
```
