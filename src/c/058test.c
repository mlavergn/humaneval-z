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
        long long *got = common((const long long[]){1, 4, 3, 34, 653, 2, 5}, 7, (const long long[]){5, 7, 1, 5, 9, 653, 121}, 7, &n);
        assert(check_lls(got, n, (const long long[]){1, 5, 653}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = common((const long long[]){5, 3, 2, 8}, 4, (const long long[]){3, 2}, 2, &n);
        assert(check_lls(got, n, (const long long[]){2, 3}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = common((const long long[]){4, 3, 2, 8}, 4, (const long long[]){3, 2, 4}, 3, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 4}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = common((const long long[]){4, 3, 2, 8}, 4, NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
