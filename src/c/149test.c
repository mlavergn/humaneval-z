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
        char **got = sorted_list_sum((const char *const[]){"aa", "a", "aaa"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"aa"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"school", "AI", "asdf", "b"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"AI", "asdf", "school"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"d", "b", "c", "a"}, 4, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"d", "dcba", "abcd", "a"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"abcd", "dcba"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"AI", "ai", "au"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"AI", "ai", "au"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"a", "b", "b", "c", "c", "a"}, 6, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = sorted_list_sum((const char *const[]){"aaaa", "bbbb", "dd", "cc"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"cc", "dd", "aaaa", "bbbb"}, 4));
        free_strs(got, n);
    }
    return 0;
}
