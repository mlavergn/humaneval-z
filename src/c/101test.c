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
        char **got = words_string("Hi, my name is John", &n);
        assert(check_strs(got, n, (const char *const[]){"Hi", "my", "name", "is", "John"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("One, two, three, four, five, six", &n);
        assert(check_strs(got, n, (const char *const[]){"One", "two", "three", "four", "five", "six"}, 6));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("", &n);
        assert(check_strs(got, n, NULL, 0));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("Hi, my name", &n);
        assert(check_strs(got, n, (const char *const[]){"Hi", "my", "name"}, 3));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("One,, two, three, four, five, six,", &n);
        assert(check_strs(got, n, (const char *const[]){"One", "two", "three", "four", "five", "six"}, 6));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = words_string("ahmed     , gamal", &n);
        assert(check_strs(got, n, (const char *const[]){"ahmed", "gamal"}, 2));
        free_strs(got, n);
    }
    return 0;
}
