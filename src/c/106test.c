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
        long long *got = f(5, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 6, 24, 15}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = f(7, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 6, 24, 15, 720, 28}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = f(1, &n);
        assert(check_lls(got, n, (const long long[]){1}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = f(3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 6}, 3));
        free(got);
    }
    return 0;
}
