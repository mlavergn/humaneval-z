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
        char **got = numerical_letter_grade((const double[]){4.0, 3.0, 1.7, 2.0, 3.5}, 5, &n);
        assert(check_strs(got, n, (const char *const[]){"A+", "B", "C-", "C", "A-"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){1.2}, 1, &n);
        assert(check_strs(got, n, (const char *const[]){"D+"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){0.5}, 1, &n);
        assert(check_strs(got, n, (const char *const[]){"D-"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){0.0}, 1, &n);
        assert(check_strs(got, n, (const char *const[]){"E"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){1.0, 0.3, 1.5, 2.8, 3.3}, 5, &n);
        assert(check_strs(got, n, (const char *const[]){"D", "D-", "C-", "B", "B+"}, 5));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = numerical_letter_grade((const double[]){0.0, 0.7}, 2, &n);
        assert(check_strs(got, n, (const char *const[]){"E", "D-"}, 2));
        free_strs(got, n);
    }
    return 0;
}
