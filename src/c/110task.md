## task_id

```
C/110
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

// In this problem, you will implement a function that takes two lists of numbers,
// and determines whether it is possible to perform an Exchange of elements
// between them to make lst1 a list of only even numbers.
// There is no limit on the number of Exchanged elements between lst1 and lst2.
// If it is possible to Exchange elements between the lst1 and lst2 to make
// all the elements of lst1 to be even, return "YES".
// Otherwise, return "NO".
// For example:
// exchange([1, 2, 3, 4], [1, 2, 3, 4]) => "YES"
// exchange([1, 2, 3, 4], [1, 5, 3, 4]) => "NO"
// It is assumed that the input lists will be non-empty.
// Returns a malloc'd string; the caller frees it.
char *exchange(const long long *lst1, size_t lst1_len, const long long *lst2, size_t lst2_len) {
```

## declaration

```c
char *exchange(const long long *lst1, size_t lst1_len, const long long *lst2, size_t lst2_len) {
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
        char *got = exchange((const long long[]){1, 2, 3, 4}, 4, (const long long[]){1, 2, 3, 4}, 4);
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    {
        char *got = exchange((const long long[]){1, 2, 3, 4}, 4, (const long long[]){1, 5, 3, 4}, 4);
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    return 0;
}
```
