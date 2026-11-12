## task_id

```
C/71
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

// Given the lengths of the three sides of a triangle. Return the area of
// the triangle rounded to 2 decimal points if the three sides form a valid triangle.
// Otherwise return -1
// Three sides make a valid triangle when the sum of any two sides is greater
// than the third side.
// Example:
// triangle_area(3, 4, 5) == 6.00
// triangle_area(1, 2, 10) == -1
double triangle_area(double a, double b, double c) {
```

## declaration

```c
double triangle_area(double a, double b, double c) {
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
    assert(triangle_area(3.0, 4.0, 5.0) == 6.0);
    assert(triangle_area(1.0, 2.0, 10.0) == -1.0);
    return 0;
}
```
