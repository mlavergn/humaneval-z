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
        long long *got = unique((const long long[]){5, 3, 5, 2, 3, 3, 9, 0, 123}, 9, &n);
        assert(check_lls(got, n, (const long long[]){0, 2, 3, 5, 9, 123}, 6));
        free(got);
    }
    return 0;
}
