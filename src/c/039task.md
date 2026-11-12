## task_id

```
C/39
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

// prime_fib returns n-th number that is a Fibonacci number and it's also prime.
// >>> prime_fib(1)
// 2
// >>> prime_fib(2)
// 3
// >>> prime_fib(3)
// 5
// >>> prime_fib(4)
// 13
// >>> prime_fib(5)
// 89
long long prime_fib(long long n) {
```

## declaration

```c
long long prime_fib(long long n) {
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
    assert(prime_fib(1) == 2);
    assert(prime_fib(2) == 3);
    assert(prime_fib(3) == 5);
    assert(prime_fib(4) == 13);
    assert(prime_fib(5) == 89);
    return 0;
}
```
