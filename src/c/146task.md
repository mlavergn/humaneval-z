## task_id

```
C/146
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

// Write a function that takes an array of numbers as input and returns
// the number of elements in the array that are greater than 10 and both
// first and last digits of a number are odd (1, 3, 5, 7, 9).
// For example:
// specialfilter([15, -73, 14, -15]) => 1
// specialfilter([33, -2, -3, 45, 21, 109]) => 2
long long specialfilter(const long long *nums, size_t nums_len) {
```

## declaration

```c
long long specialfilter(const long long *nums, size_t nums_len) {
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
    assert(specialfilter((const long long[]){15, -73, 14, -15}, 4) == 1);
    assert(specialfilter((const long long[]){33, -2, -3, 45, 21, 109}, 6) == 2);
    return 0;
}
```
