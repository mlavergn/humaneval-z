## task_id

```
C/0
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

// Check if in given list of numbers, are any two numbers closer to each other than given threshold.
// >>> has_close_elements({ 1.0, 2.0, 3.0 }, 0.5)
// false
// >>> has_close_elements({ 1.0, 2.8, 3.0, 4.0, 5.0, 2.0 }, 0.3)
// true
bool has_close_elements(const double *numbers, size_t numbers_len, double threshold) {
```

## declaration

```c
bool has_close_elements(const double *numbers, size_t numbers_len, double threshold) {
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
    assert(!has_close_elements((const double[]){1.0, 2.0, 3.0}, 3, 0.5));
    assert(has_close_elements((const double[]){1.0, 2.8, 3.0, 4.0, 5.0, 2.0}, 6, 0.3));
    return 0;
}
```
