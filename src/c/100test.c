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
        long long *got = make_a_pile(3, &n);
        assert(check_lls(got, n, (const long long[]){3, 5, 7}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = make_a_pile(4, &n);
        assert(check_lls(got, n, (const long long[]){4, 6, 8, 10}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = make_a_pile(5, &n);
        assert(check_lls(got, n, (const long long[]){5, 7, 9, 11, 13}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = make_a_pile(6, &n);
        assert(check_lls(got, n, (const long long[]){6, 8, 10, 12, 14, 16}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = make_a_pile(8, &n);
        assert(check_lls(got, n, (const long long[]){8, 10, 12, 14, 16, 18, 20, 22}, 8));
        free(got);
    }
    return 0;
}
