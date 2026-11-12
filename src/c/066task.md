## task_id

```
C/66
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

// Task
// Write a function that takes a string as input and returns the sum of the upper characters only'
// ASCII codes.
//
// Examples:
// digitsum("") => 0
// digitsum("abAB") => 131
// digitsum("abcCd") => 67
// digitsum("helloE") => 69
// digitsum("woArBld") => 131
// digitsum("aAaaaXa") => 153
long long digitsum(const char *x) {
```

## declaration

```c
long long digitsum(const char *x) {
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
    assert(digitsum("") == 0);
    assert(digitsum("abAB") == 131);
    assert(digitsum("abcCd") == 67);
    assert(digitsum("helloE") == 69);
    assert(digitsum("woArBld") == 131);
    assert(digitsum("aAaaaXa") == 153);
    return 0;
}
```
