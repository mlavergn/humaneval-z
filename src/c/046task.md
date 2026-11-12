## task_id

```
C/46
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

// The Fib4 number sequence is a sequence similar to the Fibbonacci sequnece that's defined as follows:
// fib4(0) -> 0
// fib4(1) -> 0
// fib4(2) -> 2
// fib4(3) -> 0
// fib4(n) -> fib4(n-1) + fib4(n-2) + fib4(n-3) + fib4(n-4).
// Please write a function to efficiently compute the n-th element of the Fib4 number sequence.  Do not use recursion.
// >>> fib4(5)
// 4
// >>> fib4(6)
// 8
// >>> fib4(7)
// 14
long long fib4(long long n) {
```

## declaration

```c
long long fib4(long long n) {
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
    assert(fib4(5) == 4);
    assert(fib4(6) == 8);
    assert(fib4(7) == 14);
    return 0;
}
```
