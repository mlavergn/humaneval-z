## task_id

```
C/61
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

// brackets is a string of "(" and ")".
// return true if every opening bracket has a corresponding closing bracket.
//
// >>> correct_bracketing("(")
// false
// >>> correct_bracketing("()")
// true
// >>> correct_bracketing("(()())")
// true
// >>> correct_bracketing(")(()")
// false
bool correct_bracketing(const char *brackets) {
```

## declaration

```c
bool correct_bracketing(const char *brackets) {
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
    assert(correct_bracketing("()"));
    assert(correct_bracketing("(()())"));
    assert(!correct_bracketing(")(()"));
    assert(!correct_bracketing("("));
    return 0;
}
```
