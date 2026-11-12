## task_id

```
C/43
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

// pairs_sum_to_zero takes a list of integers as an input.
// it returns true if there are two distinct elements in the list that
// sum to zero, and false otherwise.
// >>> pairs_sum_to_zero({ 1, 3, 5, 0 })
// false
// >>> pairs_sum_to_zero({ 1, 3, -2, 1 })
// false
// >>> pairs_sum_to_zero({ 1, 2, 3, 7 })
// false
// >>> pairs_sum_to_zero({ 2, 4, -5, 3, 5, 7 })
// true
// >>> pairs_sum_to_zero({ 1 })
// false
bool pairs_sum_to_zero(const long long *l, size_t l_len) {
```

## declaration

```c
bool pairs_sum_to_zero(const long long *l, size_t l_len) {
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
    assert(!pairs_sum_to_zero((const long long[]){1, 3, 5, 0}, 4));
    assert(!pairs_sum_to_zero((const long long[]){1, 3, -2, 1}, 4));
    assert(!pairs_sum_to_zero((const long long[]){1, 2, 3, 7}, 4));
    assert(pairs_sum_to_zero((const long long[]){2, 4, -5, 3, 5, 7}, 6));
    return 0;
}
```
