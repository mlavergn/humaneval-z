## task_id

```
C/35
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

// Return maximum element in the list.
// >>> max_element({ 1, 2, 3 })
// 3
// >>> max_element({ 5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10 })
// 123
long long max_element(const long long *l, size_t l_len) {
```

## declaration

```c
long long max_element(const long long *l, size_t l_len) {
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
    assert(max_element((const long long[]){1, 2, 3}, 3) == 3);
    assert(max_element((const long long[]){5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}, 11) == 123);
    return 0;
}
```
