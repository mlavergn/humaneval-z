## task_id

```
C/133
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

// You are given a list of numbers.
// You need to return the sum of squared numbers in the given list,
// round each element in the list to the upper int(Ceiling) first.
// Examples:
// For lst = [1,2,3] the output should be 14
// For lst = [1,4,9] the output should be 98
// For lst = [1,3,5,7] the output should be 84
// For lst = [1.4,4.2,0] the output should be 29
// For lst = [-2.4,1,1] the output should be 6
long long sum_squares(const double *lst, size_t lst_len) {
```

## declaration

```c
long long sum_squares(const double *lst, size_t lst_len) {
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
    assert(sum_squares((const double[]){1.0, 2.0, 3.0}, 3) == 14);
    assert(sum_squares((const double[]){1.0, 4.0, 9.0}, 3) == 98);
    assert(sum_squares((const double[]){1.0, 3.0, 5.0, 7.0}, 4) == 84);
    assert(sum_squares((const double[]){1.4, 4.2, 0.0}, 3) == 29);
    assert(sum_squares((const double[]){-2.4, 1.0, 1.0}, 3) == 6);
    return 0;
}
```
