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
        char **got = bf("Jupiter", "Neptune", &n);
        assert(check_strs(got, n, (const char *const[]){"Saturn", "Uranus"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Earth", "Mercury", &n);
        assert(check_strs(got, n, (const char *const[]){"Venus"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Mercury", "Uranus", &n);
        assert(check_strs(got, n, (const char *const[]){"Venus", "Earth", "Mars", "Jupiter", "Saturn"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Neptune", "Venus", &n);
        assert(check_strs(got, n, (const char *const[]){"Earth", "Mars", "Jupiter", "Saturn", "Uranus"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Earth", "Earth", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Mars", "Earth", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = bf("Jupiter", "Makemake", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    return 0;
}
