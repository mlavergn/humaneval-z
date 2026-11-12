## task_id

```
C/90
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

// You are given a list of integers.
// Write a function next_smallest() that returns the 2nd smallest element of the list.
// Return NULL if there is no such element.
//
// next_smallest([1, 2, 3, 4, 5]) == 2
// next_smallest([5, 1, 4, 3, 2]) == 2
// next_smallest([]) == NULL
// next_smallest([1, 1]) == NULL
// Returns false if there is no such element; otherwise stores it in *out and returns true.
bool next_smallest(const long long *lst, size_t lst_len, long long *out) {
```

## declaration

```c
bool next_smallest(const long long *lst, size_t lst_len, long long *out) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    long long out;
    assert(next_smallest((const long long[]){1, 2, 3, 4, 5}, 5, &out) && out == 2);
    assert(next_smallest((const long long[]){5, 1, 4, 3, 2}, 5, &out) && out == 2);
    assert(!next_smallest(NULL, 0, &out));
    assert(!next_smallest((const long long[]){1, 1}, 2, &out));
    return 0;
}
```
