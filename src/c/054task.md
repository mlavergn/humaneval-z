## task_id

```
C/54
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

// Check if two words have the same characters.
// >>> same_chars("eabcdzzzz", "dddzzzzzzzddeddabc")
// true
// >>> same_chars("abcd", "dddddddabc")
// true
// >>> same_chars("dddddddabc", "abcd")
// true
// >>> same_chars("eabcd", "dddddddabc")
// false
// >>> same_chars("abcd", "dddddddabce")
// false
// >>> same_chars("eabcdzzzz", "dddzzzzzzzddddabc")
// false
bool same_chars(const char *s0, const char *s1) {
```

## declaration

```c
bool same_chars(const char *s0, const char *s1) {
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
    assert(same_chars("eabcdzzzz", "dddzzzzzzzddeddabc"));
    assert(same_chars("abcd", "dddddddabc"));
    assert(same_chars("dddddddabc", "abcd"));
    assert(!same_chars("eabcd", "dddddddabc"));
    assert(!same_chars("abcd", "dddddddabcf"));
    assert(!same_chars("eabcdzzzz", "dddzzzzzzzddddabc"));
    return 0;
}
```
