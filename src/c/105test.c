#undef NDEBUG
#include <assert.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

static bool check_strs(char **got, size_t n, const char *const *want, size_t m) {
    if (n != m) return false;
    for (size_t i = 0; i < n; i++) {
        if (strcmp(got[i], want[i]) != 0) return false;
    }
    return true;
}

static void free_strs(char **xs, size_t n) {
    for (size_t i = 0; i < n; i++) free(xs[i]);
    free(xs);
}

int main(void) {
    {
        size_t n;
        char **got = by_length((const long long[]){2, 1, 1, 4, 5, 8, 2, 3}, 8, &n);
        assert(check_strs(got, n, (const char *const[]){"Eight", "Five", "Four", "Three", "Two", "Two", "One", "One"}, 8));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length(NULL, 0, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){1, -1, 55}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"One"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){1, -1, 3, 2}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"Three", "Two", "One"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = by_length((const long long[]){9, 4, 8}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Nine", "Eight", "Four"}, 3));
        free_strs(got, n);
    }
    return 0;
}
