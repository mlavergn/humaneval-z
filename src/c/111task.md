## task_id

```
C/111
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
    char letter;
    long long count;
} letter_count;

// Given a string representing a space separated lowercase letters, return a dictionary
// of the letter with the most repetition and containing the corresponding count.
// If several letters have the same occurrence, return all of them.
//
// Example:
// histogram('a b c') == {'a': 1, 'b': 1, 'c': 1}
// histogram('a b b a') == {'a': 2, 'b': 2}
// histogram('a b c a b') == {'a': 2, 'b': 2}
// histogram('b b b b a') == {'b': 4}
// histogram('') == {}
// Returns the most repeated letters with their count, sorted by letter.
// Returns a malloc'd array of the most repeated letters with their count, sorted by letter,
// and stores its length in *out_len; the caller frees it.
letter_count *histogram(const char *test, size_t *out_len) {
```

## declaration

```c
letter_count *histogram(const char *test, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_histogram(const char *test, const char *letters, long long count) {
    size_t n;
    letter_count *got = histogram(test, &n);
    bool ok = n == strlen(letters);
    for (size_t i = 0; ok && i < n; i++) ok = got[i].letter == letters[i] && got[i].count == count;
    free(got);
    return ok;
}

int main(void) {
    assert(check_histogram("a b b a", "ab", 2));
    assert(check_histogram("a b c a b", "ab", 2));
    assert(check_histogram("a b c", "abc", 1));
    assert(check_histogram("b b b b a", "b", 4));
    assert(check_histogram("", "", 0));
    return 0;
}
```
