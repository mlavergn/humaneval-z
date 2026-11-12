## task_id

```
C/87
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

// A (row, column) coordinate.
typedef struct {
    long long row, col;
} coord;

// You are given a 2 dimensional data, as a nested lists,
// which is similar to matrix, however, unlike matrices,
// each row may contain a different number of columns.
// Given lst, and integer x, find integers x in the list,
// and return list of tuples, [(x1, y1), (x2, y2) ...] such that
// each tuple is a coordinate - (row, columns), starting with 0.
// Sort coordinates initially by rows in ascending order.
// Also, sort coordinates of the row by columns in descending order.
//
// Examples:
// get_row([
// [1,2,3,4,5,6],
// [1,2,3,4,1,6],
// [1,2,3,4,5,1]
// ], 1) == [(0, 0), (1, 4), (1, 0), (2, 5), (2, 0)]
// get_row([], 1) == []
// get_row([[], [1], [1, 2, 3]], 3) == [(2, 2)]
// The rows are lst[0..lst_len), and row i has lst_lens[i] elements.
// Returns a malloc'd array of coordinates and stores its length in *out_len; the caller frees it.
coord *get_row(const long long *const *lst, const size_t *lst_lens, size_t lst_len, long long x, size_t *out_len) {
```

## declaration

```c
coord *get_row(const long long *const *lst, const size_t *lst_lens, size_t lst_len, long long x, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

static bool check_coords(const coord *got, size_t n, const coord *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i].row != want[i].row || got[i].col != want[i].col) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        coord *got = get_row((const long long *const[]){(const long long[]){1, 2, 3, 4, 5, 6}, (const long long[]){1, 2, 3, 4, 1, 6}, (const long long[]){1, 2, 3, 4, 5, 1}}, (const size_t[]){6, 6, 6}, 3, 1, &n);
        assert(check_coords(got, n, (const coord[]){{0, 0}, {1, 4}, {1, 0}, {2, 5}, {2, 0}}, 5));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){NULL}, (const size_t[]){0}, 1, 1, &n);
        assert(check_coords(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        coord *got = get_row((const long long *const[]){NULL, (const long long[]){1}, (const long long[]){1, 2, 3}}, (const size_t[]){0, 1, 3}, 3, 3, &n);
        assert(check_coords(got, n, (const coord[]){{2, 2}}, 1));
        free(got);
    }
    return 0;
}
```
