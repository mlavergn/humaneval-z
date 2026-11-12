## task_id

```
C/47
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

// Return Median of elements in the list l.
// >>> median({ 3, 1, 2, 4, 5 })
// 3.0
// >>> median({ -10, 4, 6, 1000, 10, 20 })
// 15.0
double median(const long long *l, size_t l_len) {
```

## declaration

```c
double median(const long long *l, size_t l_len) {
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
    assert(median((const long long[]){3, 1, 2, 4, 5}, 5) == 3.0);
    assert(median((const long long[]){-10, 4, 6, 1000, 10, 20}, 6) == 8.0);
    return 0;
}
```
