## task_id

```
C/13
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

// Return a greatest common divisor of two integers a and b
// >>> greatest_common_divisor(3, 5)
// 1
// >>> greatest_common_divisor(25, 15)
// 5
long long greatest_common_divisor(long long a, long long b) {
```

## declaration

```c
long long greatest_common_divisor(long long a, long long b) {
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
    assert(greatest_common_divisor(3, 5) == 1);
    assert(greatest_common_divisor(25, 15) == 5);
    return 0;
}
```
