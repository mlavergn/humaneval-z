## task_id

```
C/118
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

// You are given a word. Your task is to find the closest vowel that stands between
// two consonants from the right side of the word (case sensitive).
//
// Vowels in the beginning and ending doesn't count. Return empty string if you didn't
// find any vowel met the above condition.
//
// You may assume that the given string contains English letter only.
//
// Example:
// get_closest_vowel("yogurt") ==> "u"
// get_closest_vowel("FULL") ==> "U"
// get_closest_vowel("quick") ==> ""
// get_closest_vowel("ab") ==> ""
// Returns a malloc'd string; the caller frees it.
char *get_closest_vowel(const char *word) {
```

## declaration

```c
char *get_closest_vowel(const char *word) {
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
        char *got = get_closest_vowel("yogurt");
        assert(got && strcmp(got, "u") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("FULL");
        assert(got && strcmp(got, "U") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("ab");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    {
        char *got = get_closest_vowel("quick");
        assert(got && strcmp(got, "") == 0);
        free(got);
    }
    return 0;
}
```
