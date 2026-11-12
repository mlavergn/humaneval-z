## task_id

```
C/91
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

// You'll be given a string of words, and your task is to count the number
// of boredoms. A boredom is a sentence that starts with the word "I".
// Sentences are delimited by '.', '?' or '!'.
//
// For example:
// >>> is_bored("Hello world")
// 0
// >>> is_bored("The sky is blue. The sun is shining. I love this weather")
// 1
long long is_bored(const char *s) {
```

## declaration

```c
long long is_bored(const char *s) {
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
    assert(is_bored("Hello world") == 0);
    assert(is_bored("The sky is blue. The sun is shining. I love this weather") == 1);
    return 0;
}
```
