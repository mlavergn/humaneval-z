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
        long long *got = parse_music("", &n);
        assert(check_lls(got, n, NULL, 0));
        free(got);
    }
    {
        size_t n;
        long long *got = parse_music("o o o o", &n);
        assert(check_lls(got, n, (const long long[]){4, 4, 4, 4}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = parse_music(".| .| .| .|", &n);
        assert(check_lls(got, n, (const long long[]){1, 1, 1, 1}, 4));
        free(got);
    }
    {
        size_t n;
        long long *got = parse_music("o| o| .| .| o o o o", &n);
        assert(check_lls(got, n, (const long long[]){2, 2, 1, 1, 4, 4, 4, 4}, 8));
        free(got);
    }
    {
        size_t n;
        long long *got = parse_music("o| .| o| .| o o| o o|", &n);
        assert(check_lls(got, n, (const long long[]){2, 1, 2, 1, 4, 2, 4, 2}, 8));
        free(got);
    }
    return 0;
}
