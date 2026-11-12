## task_id

```
C/155
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

// Given an integer. return a tuple that has the number of even and odd digits respectively.
//
// Example:
// even_odd_count(-12) ==> (1, 1)
// even_odd_count(123) ==> (1, 2)
// The result is written to out[0] and out[1].
void even_odd_count(long long num, long long out[2]) {
```

## declaration

```c
void even_odd_count(long long num, long long out[2]) {
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
        even_odd_count(-12, out);
        assert(out[0] == 1 && out[1] == 1);
    }
    {
        long long out[2];
        even_odd_count(123, out);
        assert(out[0] == 1 && out[1] == 2);
    }
    return 0;
}
```
