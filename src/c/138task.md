## task_id

```
C/138
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

// Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
// Example
// is_equal_to_sum_even(4) == false
// is_equal_to_sum_even(6) == false
// is_equal_to_sum_even(8) == true
bool is_equal_to_sum_even(long long n) {
```

## declaration

```c
bool is_equal_to_sum_even(long long n) {
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
    assert(!is_equal_to_sum_even(4));
    assert(!is_equal_to_sum_even(6));
    assert(is_equal_to_sum_even(8));
    return 0;
}
```
