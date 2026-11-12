## task_id

```
C/31
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

// Return true if a given number is prime, and false otherwise.
// >>> is_prime(6)
// false
// >>> is_prime(101)
// true
// >>> is_prime(11)
// true
// >>> is_prime(13441)
// true
// >>> is_prime(61)
// true
// >>> is_prime(4)
// false
// >>> is_prime(1)
// false
bool is_prime(long long n) {
```

## declaration

```c
bool is_prime(long long n) {
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
    assert(!is_prime(6));
    assert(is_prime(101));
    assert(is_prime(11));
    assert(is_prime(13441));
    assert(is_prime(61));
    assert(!is_prime(4));
    assert(!is_prime(1));
    return 0;
}
```
