## task_id

```
C/18
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

// Find how many times a given substring can be found in the original string. Count overlaping cases.
// >>> how_many_times("", 'a')
// 0
// >>> how_many_times("aaa", 'a')
// 3
// >>> how_many_times("aaaa", "aa")
// 3
long long how_many_times(const char *str, const char *substring) {
```

## declaration

```c
long long how_many_times(const char *str, const char *substring) {
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
    assert(how_many_times("", "a") == 0);
    assert(how_many_times("aaa", "a") == 3);
    assert(how_many_times("aaaa", "aa") == 3);
    return 0;
}
```
