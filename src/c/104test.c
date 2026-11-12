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
        long long *got = unique_digits((const long long[]){15, 33, 1422, 1}, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 15, 33}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = unique_digits((const long long[]){152, 323, 1422, 10}, 4, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = unique_digits((const long long[]){12345, 2033, 111, 151}, 4, &n);
        assert(check_lls(got, n, (const long long[]){111, 151}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = unique_digits((const long long[]){135, 103, 31}, 3, &n);
        assert(check_lls(got, n, (const long long[]){31, 135}, 2));
        free(got);
    }
    return 0;
}
