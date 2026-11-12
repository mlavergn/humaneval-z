## task_id

```
C/136
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

typedef struct {
    bool has_negative;
    long long largest_negative;
    bool has_positive;
    long long smallest_positive;
} extremes;

// Create a function that returns a tuple (a, b), where 'a' is
// the largest of negative integers, and 'b' is the smallest
// of positive integers in a list.
// If there is no negative or positive integers, return them as NULL.
//
// Examples:
// largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (NULL, 1)
// largest_smallest_integers([]) == (NULL, NULL)
// largest_smallest_integers([0]) == (NULL, NULL)
// { largest negative integer, smallest positive integer }, NULL if none.
extremes largest_smallest_integers(const long long *lst, size_t lst_len) {
```

## declaration

```c
extremes largest_smallest_integers(const long long *lst, size_t lst_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    extremes got;
    got = largest_smallest_integers((const long long[]){2, 4, 1, 3, 5, 7}, 6);
    assert(!got.has_negative);
    assert(got.has_positive && got.smallest_positive == 1);
    got = largest_smallest_integers(NULL, 0);
    assert(!got.has_negative);
    assert(!got.has_positive);
    got = largest_smallest_integers((const long long[]){0}, 1);
    assert(!got.has_negative);
    assert(!got.has_positive);
    return 0;
}
```
