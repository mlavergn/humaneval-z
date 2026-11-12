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
        char **got = select_words("Mary had a little lamb", 4, &n);
        assert(check_strs(got, n, (const char *const[]){"little"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Mary had a little lamb", 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Mary", "lamb"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("simple white space", 2, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Hello world", 4, &n);
        assert(check_strs(got, n, (const char *const[]){"world"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("Uncle sam", 3, &n);
        assert(check_strs(got, n, (const char *const[]){"Uncle"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("", 4, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = select_words("a b c d e f", 1, &n);
        assert(check_strs(got, n, (const char *const[]){"b", "c", "d", "f"}, 4));
        free_strs(got, n);
    }
    return 0;
}
