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
    {
        size_t n;
        long long *got = compare((const long long[]){1, 2, 3, 4, 5, 1}, 6, (const long long[]){1, 2, 3, 4, 2, -2}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 0, 0, 0, 3, 3}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = compare((const long long[]){0, 0, 0, 0, 0, 0}, 6, (const long long[]){0, 0, 0, 0, 0, 0}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 0, 0, 0, 0, 0}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = compare((const long long[]){1, 2, 3}, 3, (const long long[]){-1, -2, -3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = compare((const long long[]){1, 2, 3, 5}, 4, (const long long[]){-1, 2, 3, 4}, 4, &n);
        assert(check_lls(got, n, (const long long[]){2, 0, 0, 1}, 4));
        free(got);
    }
    return 0;
}
