## task_id

```
C/144
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

// Your task is to implement a function that will Simplify the expression
// x * n. The function returns true if x * n evaluates to a whole number and false
// otherwise. Both x and n, are string representation of a fraction, and have the following format,
// <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
//
// You can assume that x, and n are valid fractions, and do not have zero as denominator.
//
// simplify("1/5", "5/1") = true
// simplify("1/6", "2/1") = false
// simplify("7/10", "10/2") = false
bool simplify(const char *x, const char *n) {
```

## declaration

```c
bool simplify(const char *x, const char *n) {
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
    assert(simplify("1/5", "5/1"));
    assert(!simplify("1/6", "2/1"));
    assert(!simplify("7/10", "10/2"));
    return 0;
}
```
