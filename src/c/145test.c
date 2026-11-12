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
        long long *got = order_by_points((const long long[]){1, 11, -1, -11, -12}, 5, &n);
        assert(check_lls(got, n, (const long long[]){-1, -11, 1, -12, 11}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points((const long long[]){1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46}, 15, &n);
        assert(check_lls(got, n, (const long long[]){0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457}, 15));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points((const long long[]){1, -11, -32, 43, 54, -98, 2, -3}, 8, &n);
        assert(check_lls(got, n, (const long long[]){-3, -32, -98, -11, 1, 2, 43, 54}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points((const long long[]){1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}, 11, &n);
        assert(check_lls(got, n, (const long long[]){1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9}, 11));
        free(got);
    }
    {
        size_t n;
        long long *got = order_by_points((const long long[]){0, 6, 6, -76, -21, 23, 4}, 7, &n);
        assert(check_lls(got, n, (const long long[]){-76, -21, 0, 4, 23, 6, 6}, 7));
        free(got);
    }
    return 0;
}
