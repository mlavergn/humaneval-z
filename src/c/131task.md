## task_id

```
C/131
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

// Given a positive integer n, return the product of the odd Digits.
// Return 0 if all Digits are even.
// For example:
// digits(1)  == 1
// digits(4)  == 0
// digits(235) == 15
long long digits(long long n) {
```

## declaration

```c
long long digits(long long n) {
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
    assert(digits(1) == 1);
    assert(digits(4) == 0);
    assert(digits(235) == 15);
    return 0;
}
```
