## task_id

```
C/112
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

typedef struct {
    char *string;  // malloc'd; the caller frees it
    bool is_palindrome;
} reverse_delete_result;

// Task
// We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
// then check if the result string is palindrome.
// A string is called palindrome if it reads the same backward as forward.
// You should return a tuple containing the result string and true/false for the check.
// Example
// For s = "abcde", c = "ae", the result should be ('bcd',false)
// For s = "abcdef", c = "b"  the result should be ('acdef',false)
// For s = "abcdedcba", c = "ab", the result should be ('cdedc',true)
reverse_delete_result reverse_delete(const char *s, const char *c) {
```

## declaration

```c
reverse_delete_result reverse_delete(const char *s, const char *c) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

static void check_reverse_delete(const char *s, const char *c, const char *string, bool is_palindrome) {
    reverse_delete_result got = reverse_delete(s, c);
    assert(got.string && strcmp(got.string, string) == 0);
    assert(got.is_palindrome == is_palindrome);
    free(got.string);
}

int main(void) {
    check_reverse_delete("abcde", "ae", "bcd", false);
    check_reverse_delete("abcdef", "b", "acdef", false);
    check_reverse_delete("abcdedcba", "ab", "cdedc", true);
    return 0;
}
```
