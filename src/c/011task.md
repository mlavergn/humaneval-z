## task_id

```
C/11
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

// Input are two strings a and b consisting only of 1s and 0s.
// Perform binary XOR on these inputs and return result also as a string.
// >>> string_xor("010", "110")
// "100"
// Returns a malloc'd string; the caller frees it.
char *string_xor(const char *a, const char *b) {
```

## declaration

```c
char *string_xor(const char *a, const char *b) {
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
        char *got = string_xor("010", "110");
        assert(got && strcmp(got, "100") == 0);
        free(got);
    }
    return 0;
}
```
