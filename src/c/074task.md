## task_id

```
C/74
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

// Write a function that accepts two lists of strings and returns the list that has
// total number of chars in the all strings of the list less than the other list.
//
// if the two lists have the same number of chars, return the first list.
//
// Examples
// total_match([], []) ➞ []
// total_match(['hi', 'admin'], ['hI', 'Hi']) ➞ ['hI', 'Hi']
// total_match(['hi', 'admin'], ['hi', 'hi', 'admin', 'project']) ➞ ['hi', 'admin']
// total_match(['hi', 'admin'], ['hI', 'hi', 'hi']) ➞ ['hI', 'hi', 'hi']
// total_match(['4'], ['1', '2', '3', '4', '5']) ➞ ['4']
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **total_match(const char *const *lst1, size_t lst1_len, const char *const *lst2, size_t lst2_len, size_t *out_len) {
```

## declaration

```c
char **total_match(const char *const *lst1, size_t lst1_len, const char *const *lst2, size_t lst2_len, size_t *out_len) {
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
        char **got = total_match(NULL, 0, NULL, 0, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hi", "hi", "admin", "project"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"hi", "admin"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"4"}, 1, (const char *const[]){"1", "2", "3", "4", "5"}, 5, &n);
        assert(check_strs(got, n, (const char *const[]){"4"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hI", "Hi"}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"hI", "Hi"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hI", "hi", "hi"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"hI", "hi", "hi"}, 3));
        free_strs(got, n);
    }
    return 0;
}
```
