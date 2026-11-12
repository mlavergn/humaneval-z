## task_id

```
C/102
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

// This function takes two positive numbers x and y and returns the
// biggest even integer number that is in the range [x, y] inclusive. If
// there's no such number, then the function should return -1.
//
// For example:
// choose_num(12, 15) = 14
// choose_num(13, 12) = -1
long long choose_num(long long x, long long y) {
```

## declaration

```c
long long choose_num(long long x, long long y) {
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
    assert(choose_num(12, 15) == 14);
    assert(choose_num(13, 12) == -1);
    return 0;
}
```
