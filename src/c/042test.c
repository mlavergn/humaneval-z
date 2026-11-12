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
        long long *got = incr_list(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = incr_list((const long long[]){3, 2, 1}, 3, &n);
        assert(check_lls(got, n, (const long long[]){4, 3, 2}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = incr_list((const long long[]){5, 2, 5, 2, 3, 3, 9, 0, 123}, 9, &n);
        assert(check_lls(got, n, (const long long[]){6, 3, 6, 3, 4, 4, 10, 1, 124}, 9));
        free(got);
    }
    return 0;
}
