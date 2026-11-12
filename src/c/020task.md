## task_id

```
C/20
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

// From a supplied list of numbers (of length at least two) select and return two that are the closest to each
// other and return them in order (smaller number, larger number).
// >>> find_closest_elements({ 1.0, 2.0, 3.0, 4.0, 5.0, 2.2 })
// { 2.0, 2.2 }
// >>> find_closest_elements({ 1.0, 2.0, 3.0, 4.0, 5.0, 2.0 })
// { 2.0, 2.0 }
// The result is written to out[0] and out[1].
void find_closest_elements(const double *numbers, size_t numbers_len, double out[2]) {
```

## declaration

```c
void find_closest_elements(const double *numbers, size_t numbers_len, double out[2]) {
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
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 3.0, 4.0, 5.0, 2.2}, 6, out);
        assert(out[0] == 2.0 && out[1] == 2.2);
    }
    {
        double out[2];
        find_closest_elements((const double[]){1.0, 2.0, 3.0, 4.0, 5.0, 2.0}, 6, out);
        assert(out[0] == 2.0 && out[1] == 2.0);
    }
    return 0;
}
```
