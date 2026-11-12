## task_id

```
C/8
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

// For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
// Empty sum should be equal to 0 and empty product should be equal to 1.
// >>> sum_product({})
// { 0, 1 }
// >>> sum_product({ 1, 2, 3, 4 })
// { 10, 24 }
// The result is written to out[0] and out[1].
void sum_product(const long long *numbers, size_t numbers_len, long long out[2]) {
```

## declaration

```c
void sum_product(const long long *numbers, size_t numbers_len, long long out[2]) {
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
    {
        long long out[2];
        sum_product(NULL, 0, out);
        assert(out[0] == 0 && out[1] == 1);
    }
    {
        long long out[2];
        sum_product((const long long[]){1, 2, 3, 4}, 4, out);
        assert(out[0] == 10 && out[1] == 24);
    }
    return 0;
}
```
