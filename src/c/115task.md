## task_id

```
C/115
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

// You are given a rectangular grid of wells. Each row represents a single well,
// and each 1 in a row represents a single unit of water.
// Each well has a corresponding bucket that can be used to extract water from it,
// and all buckets have the same capacity.
// Your task is to use the buckets to empty the wells.
// Output the number of times you need to lower the buckets.
//
// Example 1:
// Input:
// grid : [[0,0,1,0], [0,1,0,0], [1,1,1,1]]
// bucket_capacity : 1
// Output: 6
//
// Example 2:
// Input:
// grid : [[0,0,1,1], [0,0,0,0], [1,1,1,1], [0,1,1,1]]
// bucket_capacity : 2
// Output: 5
//
// Example 3:
// Input:
// grid : [[0,0,0], [0,0,0]]
// bucket_capacity : 5
// Output: 0
//
// Constraints:
// * all wells have the same length
// * 1 <= grid.length <= 10^2
// * 1 <= grid[:,1].length <= 10^2
// * grid[i][j] -> 0 | 1
// * 1 <= capacity <= 10
// The rows are grid[0..grid_len), and row i has grid_lens[i] elements.
long long max_fill(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long capacity) {
```

## declaration

```c
long long max_fill(const long long *const *grid, const size_t *grid_lens, size_t grid_len, long long capacity) {
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
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 1, 0}, (const long long[]){0, 1, 0, 0}, (const long long[]){1, 1, 1, 1}}, (const size_t[]){4, 4, 4}, 3, 1) == 6);
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 1, 1}, (const long long[]){0, 0, 0, 0}, (const long long[]){1, 1, 1, 1}, (const long long[]){0, 1, 1, 1}}, (const size_t[]){4, 4, 4, 4}, 4, 2) == 5);
    assert(max_fill((const long long *const[]){(const long long[]){0, 0, 0}, (const long long[]){0, 0, 0}}, (const size_t[]){3, 3}, 2, 5) == 0);
    return 0;
}
```
