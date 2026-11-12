## task_id

```
C/3
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

// You're given a list of deposit and withdrawal operations on a bank account that starts with
// zero balance. Your task is to detect if at any point the balance of account fallls below zero, and
// at that point function should return true. Otherwise it should return false.
// >>> below_zero({ 1, 2, 3 })
// false
// >>> below_zero({ 1, 2, -4, 5 })
// true
bool below_zero(const long long *operations, size_t operations_len) {
```

## declaration

```c
bool below_zero(const long long *operations, size_t operations_len) {
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
    assert(!below_zero((const long long[]){1, 2, 3}, 3));
    assert(below_zero((const long long[]){1, 2, -4, 5}, 4));
    return 0;
}
```
