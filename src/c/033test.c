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
        long long *got = sort_third((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}, 11, &n);
        assert(check_lls(got, n, (const long long[]){1, 3, -5, 2, -3, 3, 5, 0, 123, 9, -10}, 11));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 8, -12, 4, 23, 2, 3, 11, 12, -10}, 10, &n);
        assert(check_lls(got, n, (const long long[]){-10, 8, -12, 3, 23, 2, 4, 11, 12, 5}, 10));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 6, 3, 4, 8, 9, 2}, 7, &n);
        assert(check_lls(got, n, (const long long[]){2, 6, 3, 4, 8, 9, 5}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 8, 3, 4, 6, 9, 2}, 7, &n);
        assert(check_lls(got, n, (const long long[]){2, 8, 3, 4, 6, 9, 5}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 6, 9, 4, 8, 3, 2}, 7, &n);
        assert(check_lls(got, n, (const long long[]){2, 6, 9, 4, 8, 3, 5}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_third((const long long[]){5, 6, 3, 4, 8, 9, 2, 1}, 8, &n);
        assert(check_lls(got, n, (const long long[]){2, 6, 3, 4, 8, 9, 5, 1}, 8));
        free(got);
    }
    return 0;
}
