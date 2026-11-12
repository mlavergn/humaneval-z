## task_id

```
C/114
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

// Given an array of integers nums, find the minimum sum of any non-empty sub-array
// of nums.
// Example
// minsubarraysum([2, 3, 4, 1, 2, 4]) == 1
// minsubarraysum([-1, -2, -3]) == -6
long long minsubarraysum(const long long *nums, size_t nums_len) {
```

## declaration

```c
long long minsubarraysum(const long long *nums, size_t nums_len) {
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
    assert(minsubarraysum((const long long[]){2, 3, 4, 1, 2, 4}, 6) == 1);
    assert(minsubarraysum((const long long[]){-1, -2, -3}, 3) == -6);
    return 0;
}
```
