## task_id

```
C/97
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

// Complete the function that takes two integers and returns
// the product of their unit digits.
// Assume the input is always valid.
// Examples:
// multiply(148, 412) should return 16.
// multiply(19, 28) should return 72.
// multiply(2020, 1851) should return 0.
// multiply(14,-15) should return 20.
long long multiply(long long a, long long b) {
```

## declaration

```c
long long multiply(long long a, long long b) {
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
    assert(multiply(148, 412) == 16);
    assert(multiply(19, 28) == 72);
    assert(multiply(2020, 1851) == 0);
    assert(multiply(14, -15) == 20);
    return 0;
}
```
