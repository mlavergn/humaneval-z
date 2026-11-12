## task_id

```
C/23
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

// Return length of given string
// >>> string_length("")
// 0
// >>> string_length("abc")
// 3
long long string_length(const char *str) {
```

## declaration

```c
long long string_length(const char *str) {
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
    assert(string_length("") == 0);
    assert(string_length("abc") == 3);
    return 0;
}
```
