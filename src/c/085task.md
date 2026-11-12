## task_id

```
C/85
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

// Given a non-empty list of integers lst. Add the even elements that are at odd indices..
//
// Examples:
// add([4, 2, 6, 7]) ==> 2
long long add(const long long *lst, size_t lst_len) {
```

## declaration

```c
long long add(const long long *lst, size_t lst_len) {
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
    assert(add((const long long[]){4, 2, 6, 7}, 4) == 2);
    return 0;
}
```
