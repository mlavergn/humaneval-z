## task_id

```
C/132
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

// Create a function that takes a string as input which contains only square brackets.
// The function should return true if and only if there is a valid subsequence of brackets
// where at least one bracket in the subsequence is nested.
//
// is_nested('[[]]') ➞ true
// is_nested('[]]]]]]][[[[[]') ➞ false
// is_nested('[][]') ➞ false
// is_nested('[]') ➞ false
// is_nested('[[][]]') ➞ true
// is_nested('[[]][[') ➞ true
bool is_nested(const char *s) {
```

## declaration

```c
bool is_nested(const char *s) {
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
    assert(is_nested("[[]]"));
    assert(!is_nested("[]]]]]]][[[[[]"));
    assert(!is_nested("[][]"));
    assert(!is_nested("'[]'"));
    assert(is_nested("[[]][["));
    assert(is_nested("[[][]]"));
    return 0;
}
```
