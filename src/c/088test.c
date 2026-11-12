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
        long long *got = sort_array(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){5}, 1, &n);
        assert(check_lls(got, n, (const long long[]){5}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 3, 0, 1, 5}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 1, 2, 3, 4, 5}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 4, 3, 0, 1, 5, 6}, 7, &n);
        assert(check_lls(got, n, (const long long[]){6, 5, 4, 3, 2, 1, 0}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){2, 1}, 2, &n);
        assert(check_lls(got, n, (const long long[]){1, 2}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){15, 42, 87, 32, 11, 0}, 6, &n);
        assert(check_lls(got, n, (const long long[]){0, 11, 15, 32, 42, 87}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_array((const long long[]){21, 14, 23, 11}, 4, &n);
        assert(check_lls(got, n, (const long long[]){23, 21, 14, 11}, 4));
        free(got);
    }
    return 0;
}
