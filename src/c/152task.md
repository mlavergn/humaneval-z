## task_id

```
C/152
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

// I think we all remember that feeling when the result of some long-awaited
// event is finally known. The feelings and thoughts you have at that moment are
// definitely worth noting down and comparing.
// Your task is to determine if a person correctly guessed the results of a number of matches.
// You are given two arrays of scores and guesses of equal length, where each index shows a match.
// Return an array of the same length denoting how far off each guess was. If they have guessed correctly,
// the value is 0, and if not, the value is the absolute difference between the guess and the score.
//
//
// example:
//
// compare([1,2,3,4,5,1],[1,2,3,4,2,-2]) -> [0,0,0,0,3,3]
// compare([0,5,0,0,0,4],[4,1,1,0,0,-2]) -> [4,4,1,0,0,6]
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *compare(const long long *game, size_t game_len, const long long *guess, size_t guess_len, size_t *out_len) {
```

## declaration

```c
long long *compare(const long long *game, size_t game_len, const long long *guess, size_t guess_len, size_t *out_len) {
```

## example_test

```c
#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_lls(const long long *got, size_t n, const long long *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (got[i] != want[i]) return false;
    }
    return true;
}

int main(void) {
    {
        size_t n;
        long long *got = compare((const long long[]){1, 2, 3, 4, 5, 1}, 6, (const long long[]){1, 2, 3, 4, 2, -2}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 0, 0, 0, 3, 3}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = compare((const long long[]){0, 5, 0, 0, 0, 4}, 6, (const long long[]){4, 1, 1, 0, 0, -2}, 6, &n);
        assert(check_lls(got, n, (const long long[]){4, 4, 1, 0, 0, 6}, 6));
        free(got);
    }
    return 0;
}
```
