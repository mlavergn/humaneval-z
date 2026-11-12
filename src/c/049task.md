## task_id

```
C/49
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

// Return 2^n modulo p (be aware of numerics).
// >>> modp(3, 5)
// 3
// >>> modp(1101, 101)
// 2
// >>> modp(0, 101)
// 1
// >>> modp(3, 11)
// 8
// >>> modp(100, 101)
// 1
long long modp(long long n, long long p) {
```

## declaration

```c
long long modp(long long n, long long p) {
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
    assert(modp(3, 5) == 3);
    assert(modp(1101, 101) == 2);
    assert(modp(0, 101) == 1);
    assert(modp(3, 11) == 8);
    assert(modp(100, 101) == 1);
    return 0;
}
```
