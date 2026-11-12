## task_id

```
C/98
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

// Given a string s, count the number of uppercase vowels in even indices.
//
// For example:
// count_upper('aBCdEf') returns 1
// count_upper('abcdefg') returns 0
// count_upper('dBBE') returns 0
long long count_upper(const char *s) {
```

## declaration

```c
long long count_upper(const char *s) {
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
    assert(count_upper("aBCdEf") == 1);
    assert(count_upper("abcdefg") == 0);
    assert(count_upper("dBBE") == 0);
    return 0;
}
```
