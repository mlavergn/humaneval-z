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
        long long *got = get_odd_collatz(14, &n);
        assert(check_lls(got, n, (const long long[]){1, 5, 7, 11, 13, 17}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = get_odd_collatz(5, &n);
        assert(check_lls(got, n, (const long long[]){1, 5}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = get_odd_collatz(12, &n);
        assert(check_lls(got, n, (const long long[]){1, 3, 5}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = get_odd_collatz(1, &n);
        assert(check_lls(got, n, (const long long[]){1}, 1));
        free(got);
    }
    return 0;
}
