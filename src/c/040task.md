## task_id

```
C/40
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

// triples_sum_to_zero takes a list of integers as an input.
// it returns true if there are three distinct elements in the list that
// sum to zero, and false otherwise.
//
// >>> triples_sum_to_zero({ 1, 3, 5, 0 })
// false
// >>> triples_sum_to_zero({ 1, 3, -2, 1 })
// true
// >>> triples_sum_to_zero({ 1, 2, 3, 7 })
// false
// >>> triples_sum_to_zero({ 2, 4, -5, 3, 9, 7 })
// true
// >>> triples_sum_to_zero({ 1 })
// false
bool triples_sum_to_zero(const long long *l, size_t l_len) {
```

## declaration

```c
bool triples_sum_to_zero(const long long *l, size_t l_len) {
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
    assert(!triples_sum_to_zero((const long long[]){1, 3, 5, 0}, 4));
    assert(triples_sum_to_zero((const long long[]){1, 3, -2, 1}, 4));
    assert(!triples_sum_to_zero((const long long[]){1, 2, 3, 7}, 4));
    assert(triples_sum_to_zero((const long long[]){2, 4, -5, 3, 9, 7}, 6));
    return 0;
}
```
