## task_id

```
C/19
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

// Input is a space-delimited string of numberals from 'zero' to 'nine'.
// Valid choices are 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight' and 'nine'.
// Return the string with numbers sorted from smallest to largest
// >>> sort_numbers("three one five")
// "one three five"
// Returns a malloc'd string; the caller frees it.
char *sort_numbers(const char *numbers) {
```

## declaration

```c
char *sort_numbers(const char *numbers) {
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
        char *got = sort_numbers("three one five");
        assert(got && strcmp(got, "one three five") == 0);
        free(got);
    }
    return 0;
}
```
