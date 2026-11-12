## task_id

```
C/122
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

// Given a non-empty array of integers arr and an integer k, return
// the sum of the elements with at most two digits from the first k elements of arr.
//
// Example:
//
// Input: arr = [111,21,3,4000,5,6,7,8,9], k = 4
// Output: 24 # sum of 21 + 3
//
// Constraints:
// 1. 1 <= len(arr) <= 100
// 2. 1 <= k <= len(arr)
long long add_elements(const long long *arr, size_t arr_len, long long k) {
```

## declaration

```c
long long add_elements(const long long *arr, size_t arr_len, long long k) {
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
    assert(add_elements((const long long[]){111, 21, 3, 4000, 5, 6, 7, 8, 9}, 9, 4) == 24);
    return 0;
}
```
