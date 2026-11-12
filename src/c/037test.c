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
        long long *got = sort_even((const long long[]){1, 2, 3}, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_even((const long long[]){5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10}, 11, &n);
        assert(check_lls(got, n, (const long long[]){-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123}, 11));
        free(got);
    }
    {
        size_t n;
        long long *got = sort_even((const long long[]){5, 8, -12, 4, 23, 2, 3, 11, 12, -10}, 10, &n);
        assert(check_lls(got, n, (const long long[]){-12, 8, 3, 4, 5, 2, 12, 11, 23, -10}, 10));
        free(got);
    }
    return 0;
}
