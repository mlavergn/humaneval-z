## task_id

```
C/24
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

// For a given number n, find the largest number that divides n evenly, smaller than n
// >>> largest_divisor(15)
// 5
long long largest_divisor(long long n) {
```

## declaration

```c
long long largest_divisor(long long n) {
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
    assert(largest_divisor(15) == 5);
    return 0;
}
```
