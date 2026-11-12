## task_id

```
C/125
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

// Either a list of words (is_words) or a count.
typedef struct {
    bool is_words;
    char **words;  // malloc'd array of malloc'd strings; the caller frees each and the array
    size_t words_len;
    long long count;
} split_result;

// Given a string of words, return a list of words split on whitespace, if no whitespaces exists in the text you
// should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
// alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
// Examples
// split_words("Hello world!") ➞ ["Hello", "world!"]
// split_words("Hello,world!") ➞ ["Hello", "world!"]
// split_words("abcdef") == 3
split_result split_words(const char *txt) {
```

## declaration

```c
split_result split_words(const char *txt) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

static void check_words(const char *txt, const char *const *want, size_t want_len) {
    split_result got = split_words(txt);
    assert(got.is_words && got.words_len == want_len);
    for (size_t i = 0; i < want_len; i++) assert(strcmp(got.words[i], want[i]) == 0);
    for (size_t i = 0; i < got.words_len; i++) free(got.words[i]);
    free(got.words);
}

int main(void) {
    check_words("Hello world!", (const char *const[]){"Hello", "world!"}, 2);
    check_words("Hello,world!", (const char *const[]){"Hello", "world!"}, 2);
    split_result got = split_words("abcdef");
    assert(!got.is_words && got.count == 3);
    return 0;
}
```
