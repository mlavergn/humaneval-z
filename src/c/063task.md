## task_id

```
C/63
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

// The FibFib number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fibfib(0) == 0
// fibfib(1) == 0
// fibfib(2) == 1
// fibfib(n) == fibfib(n-1) + fibfib(n-2) + fibfib(n-3).
// Please write a function to efficiently compute the n-th element of the Fibfib number sequence.
// >>> fibfib(1)
// 0
// >>> fibfib(5)
// 4
// >>> fibfib(8)
// 24
long long fibfib(long long n) {
```

## declaration

```c
long long fibfib(long long n) {
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
    assert(fibfib(1) == 0);
    assert(fibfib(5) == 4);
    assert(fibfib(8) == 24);
    return 0;
}
```
