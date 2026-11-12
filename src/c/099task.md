## task_id

```
C/99
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

// Create a function that takes a value (string) representing a number
// and returns the closest integer to it. If the number is equidistant
// from two integers, round it away from zero.
//
// Examples
// >>> closest_integer("10")
// 10
// >>> closest_integer("15.3")
// 15
//
// Note:
// Rounding away from zero means that if the given number is equidistant
// from two integers, the one you should return is the one that is the
// farthest from zero. For example closest_integer("14.5") should
// return 15 and closest_integer("-14.5") should return -15.
long long closest_integer(const char *value) {
```

## declaration

```c
long long closest_integer(const char *value) {
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
    assert(closest_integer("10") == 10);
    assert(closest_integer("15.3") == 15);
    return 0;
}
```
