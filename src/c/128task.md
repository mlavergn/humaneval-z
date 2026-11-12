## task_id

```
C/128
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

// You are given an array arr of integers and you need to return
// sum of magnitudes of integers multiplied by product of all signs
// of each number in the array, represented by 1, -1 or 0.
// Note: return NULL for empty arr.
//
// Example:
// >>> prod_signs({ 1, 2, 2, -4 }) == -9
// >>> prod_signs({ 0, 1 }) == 0
// >>> prod_signs([]) == NULL
// Returns false for an empty array; otherwise stores the result in *out and returns true.
bool prod_signs(const long long *arr, size_t arr_len, long long *out) {
```

## declaration

```c
bool prod_signs(const long long *arr, size_t arr_len, long long *out) {
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
        long long out;
        assert(prod_signs((const long long[]){1, 2, 2, -4}, 4, &out) && out == -9);
    }
    {
        long long out;
        assert(prod_signs((const long long[]){0, 1}, 2, &out) && out == 0);
    }
    {
        long long out;
        assert(!prod_signs(NULL, 0, &out));
    }
    return 0;
}
```
