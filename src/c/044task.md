## task_id

```
C/44
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

// Change numerical base of input number x to base.
// return string representation after the conversion.
// base numbers are less than 10.
// >>> change_base(8, 3)
// "22"
// >>> change_base(8, 2)
// "1000"
// >>> change_base(7, 2)
// "111"
// Returns a malloc'd string; the caller frees it.
char *change_base(long long x, long long base) {
```

## declaration

```c
char *change_base(long long x, long long base) {
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
        char *got = change_base(8, 3);
        assert(got && strcmp(got, "22") == 0);
        free(got);
    }
    {
        char *got = change_base(8, 2);
        assert(got && strcmp(got, "1000") == 0);
        free(got);
    }
    {
        char *got = change_base(7, 2);
        assert(got && strcmp(got, "111") == 0);
        free(got);
    }
    return 0;
}
```
