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
        char **got = total_match(NULL, 0, NULL, 0, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hi", "hi"}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"hi", "hi"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hi", "hi", "admin", "project"}, 4, &n);
        assert(check_strs(got, n, (const char *const[]){"hi", "admin"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"4"}, 1, (const char *const[]){"1", "2", "3", "4", "5"}, 5, &n);
        assert(check_strs(got, n, (const char *const[]){"4"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hI", "Hi"}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"hI", "Hi"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hI", "hi", "hi"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"hI", "hi", "hi"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"hi", "admin"}, 2, (const char *const[]){"hI", "hi", "hii"}, 3, &n);
        assert(check_strs(got, n, (const char *const[]){"hi", "admin"}, 2));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match(NULL, 0, (const char *const[]){"this"}, 1, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = total_match((const char *const[]){"this"}, 1, NULL, 0, &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    return 0;
}
