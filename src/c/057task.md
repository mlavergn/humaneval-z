## task_id

```
C/57
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

// Return true is list elements are Monotonically increasing or decreasing.
// >>> monotonic({ 1, 2, 4, 20 })
// true
// >>> monotonic({ 1, 20, 4, 10 })
// false
// >>> monotonic({ 4, 1, 0, -10 })
// true
bool monotonic(const long long *l, size_t l_len) {
```

## declaration

```c
bool monotonic(const long long *l, size_t l_len) {
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
    assert(monotonic((const long long[]){1, 2, 4, 10}, 4));
    assert(!monotonic((const long long[]){1, 20, 4, 10}, 4));
    assert(monotonic((const long long[]){4, 1, 0, -10}, 4));
    return 0;
}
```
