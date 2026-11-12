## task_id

```
C/48
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

// Checks if given string is a palindrome
// >>> is_palindrome("")
// true
// >>> is_palindrome("aba")
// true
// >>> is_palindrome("aaaaa")
// true
// >>> is_palindrome("zbcd")
// false
bool is_palindrome(const char *text) {
```

## declaration

```c
bool is_palindrome(const char *text) {
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
    assert(is_palindrome(""));
    assert(is_palindrome("aba"));
    assert(is_palindrome("aaaaa"));
    assert(!is_palindrome("zbcd"));
    return 0;
}
```
