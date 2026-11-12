## task_id

```
C/92
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

// A dynamically typed value.
typedef enum { VALUE_NONE, VALUE_INT, VALUE_FLOAT, VALUE_BOOL, VALUE_STRING, VALUE_LIST, VALUE_DICT } value_kind;

typedef struct value {
    value_kind kind;
    union {
        long long i;
        double f;
        bool b;
        const char *s;
        struct {
            const struct value *items;
            size_t len;
        } list;  // VALUE_LIST; VALUE_DICT stores alternating keys and values
    } as;
} value;

// Create a function that takes 3 numbers.
// Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
// Returns false in any other cases.
//
// Examples
// any_int(5, 2, 7) ➞ true
//
// any_int(3, 2, 2) ➞ false
//
// any_int(3, -2, 1) ➞ true
//
// any_int(3.6, -2.2, 2) ➞ false
bool any_int(value x, value y, value z) {
```

## declaration

```c
bool any_int(value x, value y, value z) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>

#define I(v) ((value){.kind = VALUE_INT, .as.i = (v)})
#define F(v) ((value){.kind = VALUE_FLOAT, .as.f = (v)})

int main(void) {
    assert(any_int(I(5), I(2), I(7)));
    assert(!any_int(I(3), I(2), I(2)));
    assert(any_int(I(3), I(-2), I(1)));
    assert(!any_int(F(3.6), F(-2.2), I(2)));
    return 0;
}
```
