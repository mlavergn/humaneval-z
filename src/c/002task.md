## task_id

```
C/2
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

// Given a positive floating point number, it can be decomposed into
// and integer part (largest integer smaller than given number) and decimals
// (leftover part always smaller than 1).
//
// Return the decimal part of the number.
// >>> truncate_number(3.5)
// 0.5
double truncate_number(double number) {
```

## declaration

```c
double truncate_number(double number) {
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
    assert(truncate_number(3.5) == 0.5);
    return 0;
}
```
