## task_id

```
C/60
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

// sum_to_n is a function that sums numbers from 1 to n.
// >>> sum_to_n(30)
// 465
// >>> sum_to_n(100)
// 5050
// >>> sum_to_n(5)
// 15
// >>> sum_to_n(10)
// 55
// >>> sum_to_n(1)
// 1
long long sum_to_n(long long n) {
```

## declaration

```c
long long sum_to_n(long long n) {
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
    assert(sum_to_n(1) == 1);
    assert(sum_to_n(5) == 15);
    assert(sum_to_n(10) == 55);
    assert(sum_to_n(30) == 465);
    assert(sum_to_n(100) == 5050);
    return 0;
}
```
