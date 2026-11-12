## task_id

```
C/4
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

// For a given list of input numbers, calculate Mean Absolute Deviation
// around the mean of this dataset.
// Mean Absolute Deviation is the average absolute difference between each
// element and a centerpoint (mean in this case):
// MAD = average | x - x_mean |
// >>> mean_absolute_deviation({ 1.0, 2.0, 3.0, 4.0 })
// 1.0
double mean_absolute_deviation(const double *numbers, size_t numbers_len) {
```

## declaration

```c
double mean_absolute_deviation(const double *numbers, size_t numbers_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <math.h>

int main(void) {
    assert(fabs(mean_absolute_deviation((const double[]){1.0, 2.0, 3.0, 4.0}, 4) - 1.0) < 1e-6);
    return 0;
}
```
