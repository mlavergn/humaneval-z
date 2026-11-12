#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>

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
        long long *got = filter_integers(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        const value values[] = {
            {.kind = VALUE_INT, .as.i = 4},
            {.kind = VALUE_DICT, .as.list = {NULL, 0}},
            {.kind = VALUE_LIST, .as.list = {NULL, 0}},
            {.kind = VALUE_FLOAT, .as.f = 23.2},
            {.kind = VALUE_INT, .as.i = 9},
            {.kind = VALUE_STRING, .as.s = "adasd"},
        };
        size_t n;
        long long *got = filter_integers(values, 6, &n);
        assert(check_lls(got, n, (const long long[]){4, 9}, 2));
        free(got);
    }
    {
        const value values[] = {
            {.kind = VALUE_INT, .as.i = 3},
            {.kind = VALUE_STRING, .as.s = "c"},
            {.kind = VALUE_INT, .as.i = 3},
            {.kind = VALUE_INT, .as.i = 3},
            {.kind = VALUE_STRING, .as.s = "a"},
            {.kind = VALUE_STRING, .as.s = "b"},
        };
        size_t n;
        long long *got = filter_integers(values, 6, &n);
        assert(check_lls(got, n, (const long long[]){3, 3, 3}, 3));
        free(got);
    }
    return 0;
}
