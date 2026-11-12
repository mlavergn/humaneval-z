## task_id

```
C/129
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

// Given a grid with N rows and N columns (N >= 2) and a positive integer k,
// each cell of the grid contains a value. Every integer in the range [1, N * N]
// inclusive appears exactly once on the cells of the grid.
//
// You have to find the minimum path of length k in the grid. You can start
// from any cell, and in each step you can move to any of the neighbor cells,
// in other words, you can go to cells which share an edge with you current
// cell.
// Please note that a path of length k means visiting exactly k cells (not
// necessarily distinct).
// You CANNOT go off the grid.
// A path A (of length k) is considered less than a path B (of length k) if
// after making the ordered lists of the values on the cells that A and B go
// through (let's call them lst_A and lst_B), lst_A is lexicographically less
// than lst_B, in other words, there exist an integer index i (1 <= i <= k)
// such that lst_A[i] < lst_B[i] and for any j (1 <= j < i) we have
// lst_A[j] = lst_B[j].
// It is guaranteed that the answer is unique.
// Return an ordered list of the values on the cells that the minimum path go through.
//
// Examples:
//
// Input: grid = [ [1,2,3], [4,5,6], [7,8,9]], k = 3
// Output: [1, 2, 1]
//
// Input: grid = [ [5,9,3], [4,1,6], [7,8,2]], k = 1
// Output: [1]
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *minpath(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long k, size_t *out_len) {
```

## declaration

```c
long long *minpath(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long k, size_t *out_len) {
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
        long long *got = minpath((const long long *const[]){(const long long[]){1, 2, 3}, (const long long[]){4, 5, 6}, (const long long[]){7, 8, 9}}, (const size_t[]){3, 3, 3}, 3, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 1}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){5, 9, 3}, (const long long[]){4, 1, 6}, (const long long[]){7, 8, 2}}, (const size_t[]){3, 3, 3}, 3, 1, &n);
        assert(check_lls(got, n, (const long long[]){1}, 1));
        free(got);
    }
    return 0;
}
```
