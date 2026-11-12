## task_id

```
C/151
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

// Given a list of numbers, return the sum of squares of the numbers
// in the list that are odd. Ignore numbers that are negative or not integers.
//
// double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
// double_the_difference([-1, -2, 0]) == 0
// double_the_difference([9, -2]) == 81
// double_the_difference([0]) == 0
//
// If the input list is empty, return 0.
long long double_the_difference(const double *lst, size_t lst_len) {
```

## declaration

```c
long long double_the_difference(const double *lst, size_t lst_len) {
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
    assert(double_the_difference((const double[]){1.0, 3.0, 2.0, 0.0}, 4) == 10);
    assert(double_the_difference((const double[]){-1.0, -2.0, 0.0}, 3) == 0);
    assert(double_the_difference((const double[]){9.0, -2.0}, 2) == 81);
    assert(double_the_difference((const double[]){0.0}, 1) == 0);
    return 0;
}
```
