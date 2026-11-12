## task_id

```
C/17
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

// Input to this function is a string representing musical notes in a special ASCII format.
// Your task is to parse this string and return list of integers corresponding to how many beats does each
// not last.
//
// Here is a legend:
// 'o' - whole note, lasts four beats
// 'o|' - half note, lasts two beats
// '.|' - quater note, lasts one beat
//
// >>> parse_music("o o| .| o| o| .| .| .| .| o o")
// { 4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4 }
// Returns a malloc'd array and stores its length in *out_len; the caller frees it.
long long *parse_music(const char *music_string, size_t *out_len) {
```

## declaration

```c
long long *parse_music(const char *music_string, size_t *out_len) {
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
        long long *got = parse_music("o o| .| o| o| .| .| .| .| o o", &n);
        assert(check_lls(got, n, (const long long[]){4, 2, 1, 2, 2, 1, 1, 1, 1, 4, 4}, 11));
        free(got);
    }
    return 0;
}
```
