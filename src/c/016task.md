## task_id

```
C/16
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

// Given a string, find out how many distinct characters (regardless of case) does it consist of
// >>> count_distinct_characters("xyzXYZ")
// 3
// >>> count_distinct_characters("Jerry")
// 4
long long count_distinct_characters(const char *str) {
```

## declaration

```c
long long count_distinct_characters(const char *str) {
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
    assert(count_distinct_characters("xyzXYZ") == 3);
    assert(count_distinct_characters("Jerry") == 4);
    return 0;
}
```
