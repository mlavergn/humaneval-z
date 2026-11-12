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
        long long *got = maximum((const long long[]){-3, -4, 5}, 3, 3, &n);
        assert(check_lls(got, n, (const long long[]){-4, -3, 5}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){4, -4, 4}, 3, 2, &n);
        assert(check_lls(got, n, (const long long[]){4, 4}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){-3, 2, 1, 2, -1, -2, 1}, 7, 1, &n);
        assert(check_lls(got, n, (const long long[]){2}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){123, -123, 20, 0, 1, 2, -3}, 7, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 20, 123}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){-123, 20, 0, 1, 2, -3}, 6, 4, &n);
        assert(check_lls(got, n, (const long long[]){0, 1, 2, 20}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){5, 15, 0, 3, -13, -8, 0}, 7, 7, &n);
        assert(check_lls(got, n, (const long long[]){-13, -8, 0, 0, 3, 5, 15}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){-1, 0, 2, 5, 3, -10}, 6, 2, &n);
        assert(check_lls(got, n, (const long long[]){3, 5}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){1, 0, 5, -7}, 4, 1, &n);
        assert(check_lls(got, n, (const long long[]){5}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){4, -4}, 2, 2, &n);
        assert(check_lls(got, n, (const long long[]){-4, 4}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){-10, 10}, 2, 2, &n);
        assert(check_lls(got, n, (const long long[]){-10, 10}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = maximum((const long long[]){1, 2, 3, -23, 243, -400, 0}, 7, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
