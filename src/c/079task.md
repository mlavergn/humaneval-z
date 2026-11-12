## task_id

```
C/79
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

// You will be given a number in decimal form and your task is to convert it to
// binary format. The function should return a string, with each character representing a binary
// number. Each character in the string will be '0' or '1'.
//
// There will be an extra couple of characters 'db' at the beginning and at the end of the string.
// The extra characters are there to help with the format.
//
// Examples:
// decimal_to_binary(15)   # returns "db1111db"
// decimal_to_binary(32)   # returns "db100000db"
// Returns a malloc'd string; the caller frees it.
char *decimal_to_binary(long long decimal) {
```

## declaration

```c
char *decimal_to_binary(long long decimal) {
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
        char *got = decimal_to_binary(32);
        assert(got && strcmp(got, "db100000db") == 0);
        free(got);
    }
    {
        char *got = decimal_to_binary(15);
        assert(got && strcmp(got, "db1111db") == 0);
        free(got);
    }
    return 0;
}
```
