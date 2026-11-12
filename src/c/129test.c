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
        long long *got = minpath((const long long *const[]){(const long long[]){1, 2, 3}, (const long long[]){4, 5, 6}, (const long long[]){7, 8, 9}}, (const size_t[]){3, 3, 3}, 3, 3, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 1}, 3));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){5, 9, 3}, (const long long[]){4, 1, 6}, (const long long[]){7, 8, 2}}, (const size_t[]){3, 3, 3}, 3, 1, &n);
        assert(check_lls(got, n, (const long long[]){1}, 1));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){1, 2, 3, 4}, (const long long[]){5, 6, 7, 8}, (const long long[]){9, 10, 11, 12}, (const long long[]){13, 14, 15, 16}}, (const size_t[]){4, 4, 4, 4}, 4, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 1, 2}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){6, 4, 13, 10}, (const long long[]){5, 7, 12, 1}, (const long long[]){3, 16, 11, 15}, (const long long[]){8, 14, 9, 2}}, (const size_t[]){4, 4, 4, 4}, 4, 7, &n);
        assert(check_lls(got, n, (const long long[]){1, 10, 1, 10, 1, 10, 1}, 7));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){8, 14, 9, 2}, (const long long[]){6, 4, 13, 15}, (const long long[]){5, 7, 1, 12}, (const long long[]){3, 10, 11, 16}}, (const size_t[]){4, 4, 4, 4}, 4, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 7, 1, 7, 1}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){11, 8, 7, 2}, (const long long[]){5, 16, 14, 4}, (const long long[]){9, 3, 15, 6}, (const long long[]){12, 13, 10, 1}}, (const size_t[]){4, 4, 4, 4}, 4, 9, &n);
        assert(check_lls(got, n, (const long long[]){1, 6, 1, 6, 1, 6, 1, 6, 1}, 9));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){12, 13, 10, 1}, (const long long[]){9, 3, 15, 6}, (const long long[]){5, 16, 14, 4}, (const long long[]){11, 8, 7, 2}}, (const size_t[]){4, 4, 4, 4}, 4, 12, &n);
        assert(check_lls(got, n, (const long long[]){1, 6, 1, 6, 1, 6, 1, 6, 1, 6, 1, 6}, 12));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){2, 7, 4}, (const long long[]){3, 1, 5}, (const long long[]){6, 8, 9}}, (const size_t[]){3, 3, 3}, 3, 8, &n);
        assert(check_lls(got, n, (const long long[]){1, 3, 1, 3, 1, 3, 1, 3}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){6, 1, 5}, (const long long[]){3, 8, 9}, (const long long[]){2, 7, 4}}, (const size_t[]){3, 3, 3}, 3, 8, &n);
        assert(check_lls(got, n, (const long long[]){1, 5, 1, 5, 1, 5, 1, 5}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){1, 2}, (const long long[]){3, 4}}, (const size_t[]){2, 2}, 2, 10, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 1, 2, 1, 2, 1, 2, 1, 2}, 10));
        free(got);
    }
    {
        size_t n;
        long long *got = minpath((const long long *const[]){(const long long[]){1, 3}, (const long long[]){3, 2}}, (const size_t[]){2, 2}, 2, 10, &n);
        assert(check_lls(got, n, (const long long[]){1, 3, 1, 3, 1, 3, 1, 3, 1, 3}, 10));
        free(got);
    }
    return 0;
}
