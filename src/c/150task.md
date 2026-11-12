## task_id

```
C/150
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

// A simple program which should return the value of x if n is
// a prime number and should return the value of y otherwise.
//
// Examples:
// for x_or_y(7, 34, 12) == 34
// for x_or_y(15, 8, 5) == 5
long long x_or_y(long long n, long long x, long long y) {
```

## declaration

```c
long long x_or_y(long long n, long long x, long long y) {
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
    assert(x_or_y(7, 34, 12) == 34);
    assert(x_or_y(15, 8, 5) == 5);
    return 0;
}
```
