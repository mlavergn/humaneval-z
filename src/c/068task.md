## task_id

```
C/68
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

// Given an array representing a branch of a tree that has non-negative integer nodes
// your task is to Pluck one of the nodes and return it.
// The Plucked node should be the node with the smallest even value.
// If multiple nodes with the same smallest even value are found return the node that has smallest index.
//
// The Plucked node should be returned in a list, [ smalest_value, its index ],
// If there are no even values or the given array is empty, return [].
//
// Example 1:
// Input: [4,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
//
// Example 2:
// Input: [1,2,3]
// Output: [2, 1]
// Explanation: 2 has the smallest even value, and 2 has the smallest index.
//
// Example 3:
// Input: []
// Output: []
//
// Example 4:
// Input: [5, 0, 3, 0, 4, 2]
// Output: [0, 1]
// Explanation: 0 is the smallest value, but  there are two zeros,
// so we will choose the first zero, which has the smallest index.
//
// Constraints:
// * 1 <= nodes.length <= 10000
// * 0 <= node.value
// Returns false if there is no result; otherwise writes it to out[0] and out[1] and returns true.
bool pluck(const long long *arr, size_t arr_len, long long out[2]) {
```

## declaration

```c
bool pluck(const long long *arr, size_t arr_len, long long out[2]) {
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
        long long out[2];
        assert(pluck((const long long[]){4, 2, 3}, 3, out));
        assert(out[0] == 2 && out[1] == 1);
    }
    {
        long long out[2];
        assert(pluck((const long long[]){1, 2, 3}, 3, out));
        assert(out[0] == 2 && out[1] == 1);
    }
    {
        long long out[2];
        assert(!pluck(NULL, 0, out));
    }
    {
        long long out[2];
        assert(pluck((const long long[]){5, 0, 3, 0, 4, 2}, 6, out));
        assert(out[0] == 0 && out[1] == 1);
    }
    return 0;
}
```
