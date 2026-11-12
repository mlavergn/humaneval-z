## task_id

```
C/82
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

// Write a function that takes a string and returns true if the string
// length is a prime number or false otherwise
// Examples
// prime_length('Hello') == true
// prime_length('abcdcba') == true
// prime_length('kittens') == true
// prime_length('orange') == false
bool prime_length(const char *s) {
```

## declaration

```c
bool prime_length(const char *s) {
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
    assert(prime_length("Hello"));
    assert(prime_length("abcdcba"));
    assert(prime_length("kittens"));
    assert(!prime_length("orange"));
    return 0;
}
```
