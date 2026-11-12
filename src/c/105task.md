## task_id

```
C/105
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

// Given an array of integers, sort the integers that are between 1 and 9 inclusive,
// reverse the resulting array, and then replace each digit by its corresponding name from
// "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
//
// For example:
// arr = [2, 1, 1, 4, 5, 8, 2, 3]
// -> sort arr -> [1, 1, 2, 2, 3, 4, 5, 8]
// -> reverse arr -> [8, 5, 4, 3, 2, 2, 1, 1]
// return ["Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"]
//
// If the array is empty, return an empty array:
// arr = []
// return []
//
// If the array has any strange number ignore it:
// arr = [1, -1 , 55]
// -> sort arr -> [-1, 1, 55]
// -> reverse arr -> [55, 1, -1]
// return = ['One']
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **by_length(const long long *arr, size_t arr_len, size_t *out_len) {
```

## declaration

```c
char **by_length(const long long *arr, size_t arr_len, size_t *out_len) {
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
        char **got = by_length((const long long[]){2, 1, 1, 4, 5, 8, 2, 3}, 8, &n);
        assert(check_strs(got, n, (const char *const[]){"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"}, 8));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length(NULL, 0, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){1, -1, 55}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"One"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){1, -1, 3, 2}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"Three", "Two", "One"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){9, 4, 8}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Nine", "Eight", "Four"}, 3));
        free_strs(got, n);
    }
    return 0;
}
```
