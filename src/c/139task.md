## task_id

```
C/139
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

// The Brazilian factorial is defined as:
// brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
// where n > 0
//
// For example:
// >>> special_factorial(4)
// 288
//
// The function will receive an integer as input and should return the special
// factorial of this integer.
long long special_factorial(long long n) {
```

## declaration

```c
long long special_factorial(long long n) {
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
    assert(special_factorial(4) == 288);
    return 0;
}
```
