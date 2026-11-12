## task_id

```
C/70
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

// Given list of integers, return list in strange order.
// Strange sorting, is when you start with the minimum value,
// then maximum of the remaining integers, then minimum and so on.
//
// Examples:
// strange_sort_list([1, 2, 3, 4]) == [1, 4, 2, 3]
// strange_sort_list([5, 5, 5, 5]) == [5, 5, 5, 5]
// strange_sort_list([]) == []
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *strange_sort_list(const long long *lst, size_t lst_len, size_t *out_len) {
```

## declaration

```c
long long *strange_sort_list(const long long *lst, size_t lst_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_lls(const long long *got, size_t n, const long long *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){1, 2, 3, 4}, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 2, 3}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){5, 5, 5, 5}, 4, &n);
        assert(check_lls(got, n, (const long long[]){5, 5, 5, 5}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
```
