## task_id

```
C/149
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

// Write a function that accepts a list of strings as a parameter,
// deletes the strings that have odd lengths from it,
// and returns the resulted list with a sorted order,
// The list is always a list of strings and never an array of numbers,
// and it may contain duplicates.
// The order of the list should be ascending by length of each word, and you
// should return the list sorted by that rule.
// If two words have the same length, sort the list alphabetically.
// The function should return a list of strings in sorted order.
// You may assume that all words will have the same length.
// For example:
// assert list_sort(["aa", "a", "aaa"]) => ["aa"]
// assert list_sort(["ab", "a", "aaa", "cd"]) => ["ab", "cd"]
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **sorted_list_sum(const char *const *lst, size_t lst_len, size_t *out_len) {
```

## declaration

```c
char **sorted_list_sum(const char *const *lst, size_t lst_len, size_t *out_len) {
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
        char **got = sorted_list_sum((const char *const[]){"aa", "a", "aaa"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"aa"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"ab", "a", "aaa", "cd"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"ab", "cd"}, 2));
        free_strs(got, n);
    }
    return 0;
}
```
