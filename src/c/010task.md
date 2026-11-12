## task_id

```
C/10
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

// Test if given string is a palindrome.
bool is_palindrome(const char *str) {
    size_t len = strlen(str);
    for (size_t i = 0; i < len / 2; i++) {
        if (str[i] != str[len - 1 - i]) return false;
    }
    return true;
}

// Find the shortest palindrome that begins with a supplied string.
// Algorithm idea is simple:
// - Find the longest postfix of supplied string that is a palindrome.
// - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix.
// >>> make_palindrome("")
// ""
// >>> make_palindrome("cat")
// "catac"
// >>> make_palindrome("cata")
// "catac"
// Returns a malloc'd string; the caller frees it.
char *make_palindrome(const char *str) {
```

## declaration

```c
char *make_palindrome(const char *str) {
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
    {
        char *got = make_palindrome("");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("cat");
        assert(got && strcmp(got, "catac") == 0);
        free(got);
    }
    {
        char *got = make_palindrome("cata");
        assert(got && strcmp(got, "catac") == 0);
        free(got);
    }
    return 0;
}
```
