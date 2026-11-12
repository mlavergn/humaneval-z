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
        long long *got = strange_sort_list((const long long[]){1, 2, 3, 4}, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 2, 3}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){5, 6, 7, 8, 9}, 5, &n);
        assert(check_lls(got, n, (const long long[]){5, 9, 6, 8, 7}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){1, 2, 3, 4, 5}, 5, &n);
        assert(check_lls(got, n, (const long long[]){1, 5, 2, 4, 3}, 5));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){5, 6, 7, 8, 9, 1}, 6, &n);
        assert(check_lls(got, n, (const long long[]){1, 9, 5, 8, 6, 7}, 6));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){5, 5, 5, 5}, 4, &n);
        assert(check_lls(got, n, (const long long[]){5, 5, 5, 5}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){1, 2, 3, 4, 5, 6, 7, 8}, 8, &n);
        assert(check_lls(got, n, (const long long[]){1, 8, 2, 7, 3, 6, 4, 5}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){0, 2, 2, 2, 5, 5, -5, -5}, 8, &n);
        assert(check_lls(got, n, (const long long[]){-5, 5, -5, 5, 0, 2, 2, 2}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = strange_sort_list((const long long[]){111111}, 1, &n);
        assert(check_lls(got, n, (const long long[]){111111}, 1));
        free(got);
    }
    return 0;
}
