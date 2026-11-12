## task_id

```
C/157
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

// Given the lengths of the three sides of a triangle. Return true if the three
// sides form a right-angled triangle, false otherwise.
// A right-angled triangle is a triangle in which one angle is right angle or
// 90 degree.
// Example:
// right_angle_triangle(3, 4, 5) == true
// right_angle_triangle(1, 2, 3) == false
bool right_angle_triangle(long long a, long long b, long long c) {
```

## declaration

```c
bool right_angle_triangle(long long a, long long b, long long c) {
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
    assert(right_angle_triangle(3, 4, 5));
    assert(!right_angle_triangle(1, 2, 3));
    return 0;
}
```
