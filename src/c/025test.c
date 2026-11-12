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
        long long *got = factorize(2, &n);
        assert(check_lls(got, n, (const long long[]){2}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(4, &n);
        assert(check_lls(got, n, (const long long[]){2, 2}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(8, &n);
        assert(check_lls(got, n, (const long long[]){2, 2, 2}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(57, &n);
        assert(check_lls(got, n, (const long long[]){3, 19}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(3249, &n);
        assert(check_lls(got, n, (const long long[]){3, 3, 19, 19}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(185193, &n);
        assert(check_lls(got, n, (const long long[]){3, 3, 3, 19, 19, 19}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(20577, &n);
        assert(check_lls(got, n, (const long long[]){3, 19, 19, 19}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = factorize(18, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 3}, 3));
        free(got);
    }
    return 0;
}
