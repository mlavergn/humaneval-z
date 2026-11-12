## task_id

```
C/137
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

// Create a function that takes integers, floats, or strings representing
// real numbers, and returns the larger variable in its given variable type.
// Return NULL if the values are equal.
// Note: If a real number is represented as a string, the floating point might be . or ,
//
// compare_one(1, 2.5) ➞ 2.5
// compare_one(1, "2,3") ➞ "2,3"
// compare_one("5,1", "6") ➞ "6"
// compare_one("1", 1) ➞ NULL
// Returns the larger of a and b in its original type, or NULL if equal.
// Returns false if the values are equal; otherwise stores the larger one in *out and returns true.
bool compare_one(value a, value b, value *out) {
```

## declaration

```c
bool compare_one(value a, value b, value *out) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <string.h>

#define I(v) ((value){.kind = VALUE_INT, .as.i = (v)})
#define F(v) ((value){.kind = VALUE_FLOAT, .as.f = (v)})
#define S(v) ((value){.kind = VALUE_STRING, .as.s = (v)})

static bool same(value a, value b) {
    if (a.kind != b.kind) return false;
    switch (a.kind) {
    case VALUE_INT: return a.as.i == b.as.i;
    case VALUE_FLOAT: return a.as.f == b.as.f;
    case VALUE_STRING: return strcmp(a.as.s, b.as.s) == 0;
    default: return false;
    }
}

int main(void) {
    value out;
    assert(compare_one(I(1), F(2.5), &out) && same(out, F(2.5)));
    assert(compare_one(I(1), S("2,3"), &out) && same(out, S("2,3")));
    assert(compare_one(S("5,1"), S("6"), &out) && same(out, S("6")));
    assert(!compare_one(S("1"), I(1), &out));
    return 0;
}
```
