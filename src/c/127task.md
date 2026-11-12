## task_id

```
C/127
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

// You are given two intervals,
// where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
// The given intervals are closed which means that the interval (start, end)
// includes both start and end.
// For each given interval, it is assumed that its start is less or equal its end.
// Your task is to determine whether the length of Intersection of these two
// intervals is a prime number.
// Example, the Intersection of the intervals (1, 3), (2, 4) is (2, 3)
// which its length is 1, which not a prime number.
// If the length of the Intersection is a prime number, return "YES",
// otherwise, return "NO".
// If the two intervals don't intersect, return "NO".
//
//
// [input/output] samples:
// intersection((1, 2), (2, 3)) ==> "NO"
// intersection((-1, 1), (0, 4)) ==> "NO"
// intersection((-3, -1), (-5, 5)) ==> "YES"
// Returns a malloc'd string; the caller frees it.
char *intersection(const long long interval1[2], const long long interval2[2]) {
```

## declaration

```c
char *intersection(const long long interval1[2], const long long interval2[2]) {
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
        char *got = intersection((const long long[2]){1, 2}, (const long long[2]){2, 3});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-1, 1}, (const long long[2]){0, 4});
        assert(got && strcmp(got, "NO") == 0);
        free(got);
    }
    {
        char *got = intersection((const long long[2]){-3, -1}, (const long long[2]){-5, 5});
        assert(got && strcmp(got, "YES") == 0);
        free(got);
    }
    return 0;
}
```
