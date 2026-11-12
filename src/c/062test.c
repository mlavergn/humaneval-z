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
        long long *got = derivative((const long long[]){3, 1, 2, 4, 5}, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 12, 20}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = derivative((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 6}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = derivative((const long long[]){3, 2, 1}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 2}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = derivative((const long long[]){3, 2, 1, 0, 4}, 5, &n);
        assert(check_lls(got, n, (const long long[]){2, 2, 0, 16}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = derivative((const long long[]){1}, 1, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
