## task_id

```
C/77
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

// Write a function that takes an integer a and returns true
// if this ingeger is a cube of some integer number.
// Note: you may assume the input is always valid.
// Examples:
// iscube(1) ==> true
// iscube(2) ==> false
// iscube(-1) ==> true
// iscube(64) ==> true
// iscube(0) ==> true
// iscube(180) ==> false
bool iscube(long long a) {
```

## declaration

```c
bool iscube(long long a) {
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
    assert(iscube(1));
    assert(!iscube(2));
    assert(iscube(-1));
    assert(iscube(64));
    assert(!iscube(180));
    assert(iscube(0));
    return 0;
}
```
