## task_id

```
C/126
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

// Given a list of numbers, return whether or not they are sorted
// in ascending order. If list has more than 1 duplicate of the same
// number, return false. Assume no negative numbers and only integers.
//
// Examples
// is_sorted([5]) ➞ true
// is_sorted([1, 2, 3, 4, 5]) ➞ true
// is_sorted([1, 3, 2, 4, 5]) ➞ false
// is_sorted([1, 2, 3, 4, 5, 6]) ➞ true
// is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ true
// is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ false
// is_sorted([1, 2, 2, 3, 3, 4]) ➞ true
// is_sorted([1, 2, 2, 2, 3, 4]) ➞ false
bool is_sorted(const long long *lst, size_t lst_len) {
```

## declaration

```c
bool is_sorted(const long long *lst, size_t lst_len) {
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
    assert(is_sorted((const long long[]){5}, 1));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5}, 5));
    assert(!is_sorted((const long long[]){1, 3, 2, 4, 5}, 5));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5, 6}, 6));
    assert(is_sorted((const long long[]){1, 2, 3, 4, 5, 6, 7}, 7));
    assert(!is_sorted((const long long[]){1, 3, 2, 4, 5, 6, 7}, 7));
    assert(!is_sorted((const long long[]){1, 2, 2, 2, 3, 4}, 6));
    assert(is_sorted((const long long[]){1, 2, 2, 3, 3, 4}, 6));
    return 0;
}
```
