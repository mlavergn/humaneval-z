## task_id

```
C/53
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

// Add two numbers x and y
// >>> add(2, 3)
// 5
// >>> add(5, 7)
// 12
long long add(long long x, long long y) {
```

## declaration

```c
long long add(long long x, long long y) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>

int main(void) {
    assert(add(2, 3) == 5);
    assert(add(5, 7) == 12);
    return 0;
}
```
