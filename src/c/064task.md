## task_id

```
C/64
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

// Write a function vowels_count which takes a string representing
// a word as input and returns the number of vowels in the string.
// Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
// vowel, but only when it is at the end of the given word.
//
// Example:
// >>> vowels_count("abcde")
// 2
// >>> vowels_count("ACEDY")
// 3
long long vowels_count(const char *s) {
```

## declaration

```c
long long vowels_count(const char *s) {
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
    assert(vowels_count("abcde") == 2);
    assert(vowels_count("ACEDY") == 3);
    return 0;
}
```
