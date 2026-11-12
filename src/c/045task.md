## task_id

```
C/45
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

// Given length of a side and high return area for a triangle.
// >>> triangle_area(5, 3)
// 7.5
double triangle_area(double a, double h) {
```

## declaration

```c
double triangle_area(double a, double h) {
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
    assert(triangle_area(5.0, 3.0) == 7.5);
    return 0;
}
```
