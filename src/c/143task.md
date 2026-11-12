## task_id

```
C/143
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

// You are given a string representing a sentence,
// the sentence contains some words separated by a space,
// and you have to return a string that contains the words from the original sentence,
// whose lengths are prime numbers,
// the order of the words in the new string should be the same as the original one.
//
// Example 1:
// Input: sentence = "This is a test"
// Output: "is"
//
// Example 2:
// Input: sentence = "lets go for swimming"
// Output: "go for"
//
// Constraints:
// * 1 <= len(sentence) <= 100
// * sentence contains only letters
// Returns a malloc'd string; the caller frees it.
char *words_in_sentence(const char *sentence) {
```

## declaration

```c
char *words_in_sentence(const char *sentence) {
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
        char *got = words_in_sentence("This is a test");
        assert(got && strcmp(got, "is") == 0);
        free(got);
    }
    {
        char *got = words_in_sentence("lets go for swimming");
        assert(got && strcmp(got, "go for") == 0);
        free(got);
    }
    return 0;
}
```
