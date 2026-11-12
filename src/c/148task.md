## task_id

```
C/148
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

// There are eight planets in our solar system: the closerst to the Sun
// is Mercury, the next one is Venus, then Earth, Mars, Jupiter, Saturn,
// Uranus, Neptune.
// Write a function that takes two planet names as strings planet1 and planet2.
// The function should return a tuple containing all planets whose orbits are
// located between the orbit of planet1 and the orbit of planet2, sorted by
// the proximity to the sun.
// The function should return an empty tuple if planet1 or planet2
// are not correct planet names.
// Examples
// bf("Jupiter", "Neptune") ==> ("Saturn", "Uranus")
// bf("Earth", "Mercury") ==> ("Venus")
// bf("Mercury", "Uranus") ==> ("Venus", "Earth", "Mars", "Jupiter", "Saturn")
// Returns a slice of a static table; nothing to free.
// Returns a malloc'd array of malloc'd strings and stores its length in *out_len;
// the caller frees each string and the array.
char **bf(const char *planet1, const char *planet2, size_t *out_len) {
```

## declaration

```c
char **bf(const char *planet1, const char *planet2, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_strs(char **got, size_t n, const char *const *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (strcmp(got[i], want[i]) != 0) return false;
    }
    return true;
}

static void free_strs(char **xs, size_t n) {
    for (size_t i = 0; i < n; i++) free(xs[i]);
    free(xs);
}

int main(void) {
    {
        size_t n;
        char **got = bf("Jupiter", "Neptune", &n);
        assert(check_strs(got, n, (const char *const[]){"Saturn", "Uranus"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Earth", "Mercury", &n);
        assert(check_strs(got, n, (const char *const[]){"Venus"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Mercury", "Uranus", &n);
        assert(check_strs(got, n, (const char *const[]){"Venus", "Earth", "Mars", "Jupiter", "Saturn"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Neptune", "Venus", &n);
        assert(check_strs(got, n, (const char *const[]){"Earth", "Mars", "Jupiter", "Saturn", "Uranus"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Earth", "Earth", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Mars", "Earth", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Jupiter", "Makemake", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    return 0;
}
```
