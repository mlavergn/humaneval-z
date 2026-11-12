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
        long long *got = count_up_to(5, &n);
        assert(check_lls(got, n, (const long long[]){2, 3}, 2));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(6, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(7, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(10, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(22, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17, 19}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(1, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(18, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(47, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43}, 14));
        free(got);
    }
    {
        size_t n;
        long long *got = count_up_to(101, &n);
        assert(check_lls(got, n, (const long long[]){2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}, 25));
        free(got);
    }
    return 0;
}
