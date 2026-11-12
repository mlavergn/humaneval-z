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
        long long *got = generate_integers(2, 10, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6, 8}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = generate_integers(10, 2, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6, 8}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = generate_integers(132, 2, &n);
        assert(check_lls(got, n, (const long long[]){2, 4, 6, 8}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = generate_integers(17, 89, &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    return 0;
}
