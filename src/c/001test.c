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
        char **got = separate_paren_groups("(()()) ((())) () ((())()())", &n);
        assert(check_strs(got, n, (const char *const[]){"(()())", "((()))", "()", "((())()())"}, 4));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = separate_paren_groups("() (()) ((())) (((())))", &n);
        assert(check_strs(got, n, (const char *const[]){"()", "(())", "((()))", "(((())))"}, 4));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = separate_paren_groups("(()(())((())))", &n);
        assert(check_strs(got, n, (const char *const[]){"(()(())((())))"}, 1));
        free_strs(got, n);
    }
    {
        size_t n;
        char **got = separate_paren_groups("( ) (( )) (( )( ))", &n);
        assert(check_strs(got, n, (const char *const[]){"()", "(())", "(()())"}, 3));
        free_strs(got, n);
    }
    return 0;
}
