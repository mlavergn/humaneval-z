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
        long long *got = sort_array((const long long[]){1, 5, 2, 3, 4}, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 4, 3, 5}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){-2, -3, -4, -5, -6}, 5, &n);
        assert(check_lls(got, n, (const long long[]){-4, -2, -6, -5, -3}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){1, 0, 2, 3, 4}, 5, &n);
        assert(check_lls(got, n, (const long long[]){0, 1, 2, 4, 3}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4}, 11, &n);
        assert(check_lls(got, n, (const long long[]){2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77}, 11));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){3, 6, 44, 12, 32, 5}, 6, &n);
        assert(check_lls(got, n, (const long long[]){32, 3, 5, 6, 12, 44}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 8, 16, 32}, 5, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 8, 16, 32}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 8, 16, 32}, 5, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 8, 16, 32}, 5));
        free(got);
    }
    return 0;
}
