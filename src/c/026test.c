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
        long long *got = remove_duplicates(NULL, 0, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = remove_duplicates((const long long[]){1, 2, 3, 4}, 4, &n);
        assert(check_lls(got, n, (const long long[]){1, 2, 3, 4}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = remove_duplicates((const long long[]){1, 2, 3, 2, 4, 3, 5}, 7, &n);
        assert(check_lls(got, n, (const long long[]){1, 4, 5}, 3));
        free(got);
    }
    return 0;
}
