## task_id

```
C/142
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

// This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a
// multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not
// change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries.
//
// Examples:
// For lst = [1,2,3] the output should be 6
// For lst = []  the output should be 0
// For lst = [-1,-5,2,-1,-5]  the output should be -126
long long sum_squares(const long long *lst, size_t lst_len) {
```

## declaration

```c
long long sum_squares(const long long *lst, size_t lst_len) {
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
    assert(sum_squares((const long long[]){1, 2, 3}, 3) == 6);
    assert(sum_squares(NULL, 0) == 0);
    assert(sum_squares((const long long[]){-1, -5, 2, -1, -5}, 5) == -126);
    return 0;
}
```
