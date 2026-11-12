## task_id

```
C/154
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

// You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
// cycpattern_check("abcd","abd") => false
// cycpattern_check("hello","ell") => true
// cycpattern_check("whassup","psus") => false
// cycpattern_check("abab","baa") => true
// cycpattern_check("efef","eeff") => false
// cycpattern_check("himenss","simen") => true
bool cycpattern_check(const char *a, const char *b) {
```

## declaration

```c
bool cycpattern_check(const char *a, const char *b) {
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
    assert(!cycpattern_check("abcd", "abd"));
    assert(cycpattern_check("hello", "ell"));
    assert(!cycpattern_check("whasup", "psus"));
    assert(cycpattern_check("abab", "baa"));
    assert(!cycpattern_check("efef", "eeff"));
    assert(cycpattern_check("himenss", "simen"));
    return 0;
}
```
