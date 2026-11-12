## task_id

```
C/121
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

// Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
//
// Examples
// solution([5, 8, 7, 1]) ==> 12
// solution([3, 3, 3, 3, 3]) ==> 9
// solution([30, 13, 24, 321]) ==>0
long long solution(const long long *lst, size_t lst_len) {
```

## declaration

```c
long long solution(const long long *lst, size_t lst_len) {
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
    assert(solution((const long long[]){5, 8, 7, 1}, 4) == 12);
    assert(solution((const long long[]){3, 3, 3, 3, 3}, 5) == 9);
    assert(solution((const long long[]){30, 13, 24, 321}, 4) == 0);
    return 0;
}
```
