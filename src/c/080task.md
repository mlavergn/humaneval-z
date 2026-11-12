## task_id

```
C/80
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

// You are given a string s.
// Your task is to check if the string is happy or not.
// A string is happy if its length is at least 3 and every 3 consecutive letters are distinct
// For example:
// is_happy(a) => false
// is_happy(aa) => false
// is_happy(abcd) => true
// is_happy(aabb) => false
// is_happy(adb) => true
// is_happy(xyy) => false
bool is_happy(const char *s) {
```

## declaration

```c
bool is_happy(const char *s) {
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
    assert(!is_happy("a"));
    assert(!is_happy("aa"));
    assert(is_happy("abcd"));
    assert(!is_happy("aabb"));
    assert(is_happy("adb"));
    assert(!is_happy("xyy"));
    return 0;
}
```
