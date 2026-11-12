## task_id

```
C/95
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

// Given a dictionary, return true if all keys are strings in lower
// case or all keys are strings in upper case, else return false.
// The function should return false is the given dictionary is empty.
// Examples:
// check_dict_case({"a":"apple", "b":"banana"}) should return true.
// check_dict_case({"a":"apple", "A":"banana", "B":"banana"}) should return false.
// check_dict_case({"a":"apple", 8:"banana", "a":"apple"}) should return false.
// check_dict_case({"Name":"John", "Age":"36", "City":"Houston"}) should return false.
// check_dict_case({"STATE":"NC", "ZIP":"12345" }) should return true.
// The dictionary is given as a slice of { key, value } pairs.
// The dictionary is given as dict_len { key, value } string pairs.
bool check_dict_case(const char *const (*dict)[2], size_t dict_len) {
```

## declaration

```c
bool check_dict_case(const char *const (*dict)[2], size_t dict_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stddef.h>

int main(void) {
    assert(check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"b", "banana"}}, 2));
    assert(!check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"A", "banana"}, {"B", "banana"}}, 3));
    assert(!check_dict_case((const char *const[][2]){{"p", "pineapple"}, {"5", "banana"}, {"a", "apple"}}, 3));
    assert(!check_dict_case((const char *const[][2]){{"Name", "John"}, {"Age", "36"}, {"City", "Houston"}}, 3));
    assert(check_dict_case((const char *const[][2]){{"STATE", "NC"}, {"ZIP", "12345"}}, 2));
    return 0;
}
```
