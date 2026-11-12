## task_id

```
C/141
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

// Create a function which takes a string representing a file's name, and returns
// 'Yes' if the the file's name is valid, and returns 'No' otherwise.
// A file's name is considered to be valid if and only if all the following conditions
// are met:
// - There should not be more than three digits ('0'-'9') in the file's name.
// - The file's name contains exactly one dot '.'
// - The substring before the dot should not be empty, and it starts with a letter from
// the latin alphapet ('a'-'z' and 'A'-'Z').
// - The substring after the dot should be one of these: ['txt', 'exe', 'dll']
// Examples:
// file_name_check("example.txt") # => 'Yes'
// file_name_check("1example.dll") # => 'No' (the name should start with a latin alphapet letter)
// Returns a malloc'd string; the caller frees it.
char *file_name_check(const char *file_name) {
```

## declaration

```c
char *file_name_check(const char *file_name) {
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
        char *got = file_name_check("example.txt");
        assert(got && strcmp(got, "Yes") == 0);
        free(got);
    }
    {
        char *got = file_name_check("1example.dll");
        assert(got && strcmp(got, "No") == 0);
        free(got);
    }
    return 0;
}
```
