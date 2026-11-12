## task_id

```
C/134
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

// Create a function that returns true if the last character
// of a given string is an alphabetical character and is not
// a part of a word, and false otherwise.
// Note: "word" is a group of characters separated by space.
//
// Examples:
// check_if_last_char_is_aletter("apple pie") ➞ false
// check_if_last_char_is_aletter("apple pi e") ➞ true
// check_if_last_char_is_aletter("apple pi e ") ➞ false
// check_if_last_char_is_aletter("") ➞ false
bool check_if_last_char_is_a_letter(const char *txt) {
```

## declaration

```c
bool check_if_last_char_is_a_letter(const char *txt) {
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
    assert(check_if_last_char_is_a_letter("apple pi e"));
    assert(!check_if_last_char_is_a_letter(""));
    assert(!check_if_last_char_is_a_letter("apple pie"));
    assert(!check_if_last_char_is_a_letter("apple pi e "));
    return 0;
}
```
