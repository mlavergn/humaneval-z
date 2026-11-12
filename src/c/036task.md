## task_id

```
C/36
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

// Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
// >>> fizz_buzz(50)
// 0
// >>> fizz_buzz(78)
// 2
// >>> fizz_buzz(79)
// 3
long long fizz_buzz(long long n) {
```

## declaration

```c
long long fizz_buzz(long long n) {
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
    assert(fizz_buzz(50) == 0);
    assert(fizz_buzz(78) == 2);
    assert(fizz_buzz(79) == 3);
    return 0;
}
```
