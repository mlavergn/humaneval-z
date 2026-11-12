## task_id

```
C/52
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

// Return true if all numbers in the list l are below threshold t.
// >>> below_threshold({ 1, 2, 4, 10 }, 100)
// true
// >>> below_threshold({ 1, 20, 4, 10 }, 5)
// false
bool below_threshold(const long long *l, size_t l_len, long long t) {
```

## declaration

```c
bool below_threshold(const long long *l, size_t l_len, long long t) {
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
    assert(below_threshold((const long long[]){1, 2, 4, 10}, 4, 100));
    assert(!below_threshold((const long long[]){1, 20, 4, 10}, 4, 5));
    return 0;
}
```
